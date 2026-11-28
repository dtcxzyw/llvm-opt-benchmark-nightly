Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nsfactor?download=true
inline.NumInlined: 348
inline.NumDeleted: 163
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZdaPvm
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert1 = zext nneg i32 %i.b to i64
  %.phi.trans.insert2 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert1
  %.pre = load i64, ptr %.phi.trans.insert2, align 8, !tbaa !15
  %i.d = add nuw nsw i32 %i.b, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.e)
  %.sroa.020.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !18
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !18
  %i.f = load i64, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.g = add i64 %i.f, %.sroa.020.0.copyload.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 4 uses
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
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.bj = phi i64 [ %i.bf, %bb.b ], [ %.pre, %._crit_edge ]
  %i.bk = phi i32 [ 1, %bb.b ], [ %i.d, %._crit_edge ]
  store i32 %i.bk, ptr %i.a, align 8, !tbaa !53
  ret i64 %i.bj
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z34calc_radial_distribution_histogramP10gmx_sans_tPA3_fS2_PKiidbbfj.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %11 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %12 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %13 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %14 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %15 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 4 uses
  %i.f = add nsw i32 %i.e, -1                     ; 5 uses
  %.not.i.i = icmp slt i32 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx22UniformIntDistributionIiE10param_typeC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.24, i32 noundef 98) #25
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.b
  unreachable

_ZN3gmx22UniformIntDistributionIiEC2Eii.exit:     ; preds = %bb.a
  %i.g = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.c unwind label %bb.af

bb.c:                                             ; preds = %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit
  %i.h = load i64, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !38    ; 3 uses
  br i1 %i.i, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.j, ptr %i.b, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 1, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !38
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.k = load i64, ptr %i.b, align 8, !tbaa !15
  %i.l = call i64 @llvm.smin.i64(i64 %i.k, i64 %i.j) ; 2 uses
  store i64 %i.l, ptr %i.b, align 8, !tbaa !15
  %i.m = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not94 = icmp sgt i64 %i.m, %i.l
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = sext i32 %i.g to i64                     ; 3 uses
  %i.o = icmp eq i32 %i.f, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread
  %.097 = phi i64 [ %i.ig, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread ], [ %i.m, %.lr.ph ] ; 2 uses
  %.sroa.10.096 = phi i64 [ %i.ge, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread ], [ 0, %.lr.ph ]
  %.sroa.15.095 = phi i32 [ %i.gi, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread ], [ 0, %.lr.ph ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !50
  %i.q = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.n ; 7 uses
  %i.r = invoke noundef i32 @_ZN3gmx5log2IEj(i32 noundef %i.f)
          to label %bb.e unwind label %bb.ab      ; 2 uses

bb.e:                                             ; preds = %.lr.ph.split
  %i.s = ashr i32 %i.f, %i.r
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = add i32 %i.r, %i.u                       ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.e
  %.sroa.10.1 = phi i64 [ %.sroa.10.096, %bb.e ], [ %i.cu, %._crit_edge.i.i ]
  %i.ab = phi i32 [ %.sroa.15.095, %bb.e ], [ %i.cy, %._crit_edge.i.i ] ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %i.v
  br i1 %i.ac, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !53  ; 3 uses
  %i.ae = icmp ugt i32 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.phi.trans.insert1.i = zext nneg i32 %i.ad to i64
  %.phi.trans.insert2.i = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert.i, i64 %.phi.trans.insert1.i
  %.pre.i = load i64, ptr %.phi.trans.insert2.i, align 8, !tbaa !15
  %i.af = add nuw nsw i32 %i.ad, 1
  br label %.noexc35

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !15
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %.noexc44

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 24) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull @.str.19)
          to label %bb.j unwind label %.thread.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %bb.k unwind label %.thread24.i

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %13, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %15, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.ak, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.20, ptr %.sroa.4.0..sroa_idx.i56, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !38
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.aj, ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr %i.aj, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #25
          to label %bb.o unwind label %bb.m

.thread.i:                                        ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.n

.thread24.i:                                      ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #15
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi i1 [ false, %bb.l ], [ true, %bb.k ]
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #15
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br i1 %.0.i, label %.body.sink.split, label %.body

bb.n:                                             ; preds = %.thread24.i, %.thread.i
  %.pn.pn23.i = phi { ptr, i32 } [ %i.am, %.thread24.i ], [ %i.al, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  unreachable

.noexc44:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.sroa.020.0.copyload.i.i = load i64, ptr %i.z, align 8, !tbaa !18
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !15  ; 4 uses
  %i.ap = add i64 %i.ao, %.sroa.020.0.copyload.i.i
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !15 ; 4 uses
  %i.ar = xor i64 %i.ao, %i.aq
  %i.as = xor i64 %i.ar, 2004413935125273122      ; 2 uses
  %i.at = add i64 %i.aq, %i.ah                    ; 3 uses
  %i.au = add i64 %i.ap, %i.at                    ; 2 uses
  %i.av = call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 16)
  %i.aw = xor i64 %i.av, %i.au                    ; 3 uses
  %i.ax = add i64 %i.aw, %i.au                    ; 2 uses
  %i.ay = call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 42)
  %i.az = xor i64 %i.ay, %i.ax                    ; 3 uses
  %i.ba = add i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 12)
  %i.bc = xor i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = add i64 %i.bc, %i.ba                    ; 2 uses
  %i.be = call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 31)
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = add i64 %i.bd, %i.aq
  %i.bh = add i64 %i.as, 1
  %i.bi = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bi                    ; 2 uses
  %i.bk = call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = add i64 %i.bl, %i.bj                    ; 2 uses
  %i.bn = call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bo = xor i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = add i64 %i.bo, %i.bm                    ; 2 uses
  %i.bq = call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 24)
  %i.br = xor i64 %i.bq, %i.bp                    ; 3 uses
  %i.bs = add i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = add i64 %i.bs, %i.as
  %i.bw = add i64 %i.ao, 2
  %i.bx = add i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = add i64 %i.bv, %i.bx                    ; 2 uses
  %i.bz = call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 16)
  %i.ca = xor i64 %i.bz, %i.by                    ; 3 uses
  %i.cb = add i64 %i.ca, %i.by                    ; 2 uses
  %i.cc = call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 42)
  %i.cd = xor i64 %i.cc, %i.cb                    ; 3 uses
  %i.ce = add i64 %i.cd, %i.cb                    ; 2 uses
  %i.cf = call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 12)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = add i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 31)
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = add i64 %i.ch, %i.ao
  %i.cl = add i64 %i.aq, 3
  %i.cm = add i64 %i.cl, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.ck, %i.cm                    ; 3 uses
  %i.co = call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 16)
  %i.cp = xor i64 %i.co, %i.cn
  store i64 %i.cn, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  store i64 %i.cp, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !18
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc44, %._crit_edge.i
  %i.cq = phi i64 [ %i.cn, %.noexc44 ], [ %.pre.i, %._crit_edge.i ]
  %i.cr = phi i32 [ 1, %.noexc44 ], [ %i.af, %._crit_edge.i ]
  store i32 %i.cr, ptr %i.x, align 8, !tbaa !53
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %.noexc35
  %i.cs = phi i32 [ 64, %.noexc35 ], [ %i.ab, %bb.f ]
  %i.ct = phi i64 [ %i.cq, %.noexc35 ], [ %.sroa.10.1, %bb.f ] ; 2 uses
  %i.cu = lshr i64 %i.ct, %i.w                    ; 3 uses
  %i.cv = shl i64 %i.cu, %i.w
  %i.cw = sub i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %i.cy = sub i32 %i.cs, %i.v                     ; 2 uses
  %.not86 = icmp sgt i32 %i.e, %i.cx
  br i1 %.not86, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit, label %bb.f, !llvm.loop !126

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit: ; preds = %._crit_edge.i.i
  %i.cz = load ptr, ptr %4, align 8, !tbaa !50
  %i.da = getelementptr inbounds [56 x i8], ptr %i.cz, i64 %i.n ; 7 uses
  %i.db = invoke noundef i32 @_ZN3gmx5log2IEj(i32 noundef %i.f)
          to label %bb.p unwind label %bb.ab      ; 2 uses

bb.p:                                             ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit
  %i.dc = ashr i32 %i.f, %i.db
  %i.dd = icmp sgt i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = add i32 %i.db, %i.de                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 2 uses
  %.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i38, %bb.p
  %.sroa.10.3 = phi i64 [ %i.cu, %bb.p ], [ %i.ge, %._crit_edge.i.i38 ]
  %i.dl = phi i32 [ %i.cy, %bb.p ], [ %i.gi, %._crit_edge.i.i38 ] ; 2 uses
  %i.dm = icmp ult i32 %i.dl, %i.df
  br i1 %i.dm, label %bb.r, label %._crit_edge.i.i38

bb.r:                                             ; preds = %bb.q
  %i.dn = load i32, ptr %i.dh, align 8, !tbaa !53 ; 3 uses
  %i.do = icmp ugt i32 %i.dn, 1
  br i1 %i.do, label %bb.s, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.r
  %.phi.trans.insert1.i47 = zext nneg i32 %i.dn to i64
  %.phi.trans.insert2.i48 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert.i46, i64 %.phi.trans.insert1.i47
  %.pre.i49 = load i64, ptr %.phi.trans.insert2.i48, align 8, !tbaa !15
  %i.dp = add nuw nsw i32 %i.dn, 1
  br label %.noexc42

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.dq = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  store i64 %i.dr, ptr %i.di, align 8, !tbaa !15
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.t, label %.noexc54

bb.t:                                             ; preds = %bb.s
  %i.dt = call ptr @__cxa_allocate_exception(i64 24) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull @.str.19)
          to label %bb.u unwind label %.thread.i57

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.v unwind label %.thread24.i62

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %10, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %12, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj64EEEvPSt5arrayIT_XT0_EE, ptr %i.du, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.20, ptr %.sroa.4.0..sroa_idx.i63, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 280, ptr %.sroa.5.0..sroa_idx.i64, align 8, !tbaa !38
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.dt, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr %i.dt, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #25
          to label %bb.z unwind label %bb.x

.thread.i57:                                      ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.y

.thread24.i62:                                    ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #15
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i65 = phi i1 [ false, %bb.w ], [ true, %bb.v ]
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #15
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br i1 %.0.i65, label %.body.sink.split, label %.body

bb.y:                                             ; preds = %.thread24.i62, %.thread.i57
  %.pn.pn23.i60 = phi { ptr, i32 } [ %i.dw, %.thread24.i62 ], [ %i.dv, %.thread.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.body.sink.split

bb.z:                                             ; preds = %bb.w
  unreachable

.noexc54:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.sroa.020.0.copyload.i.i50 = load i64, ptr %i.dj, align 8, !tbaa !18
  %i.dy = load i64, ptr %i.da, align 8, !tbaa !15 ; 4 uses
  %i.dz = add i64 %i.dy, %.sroa.020.0.copyload.i.i50
  %i.ea = load i64, ptr %i.dk, align 8, !tbaa !15 ; 4 uses
  %i.eb = xor i64 %i.dy, %i.ea
  %i.ec = xor i64 %i.eb, 2004413935125273122      ; 2 uses
  %i.ed = add i64 %i.ea, %i.dr                    ; 3 uses
  %i.ee = add i64 %i.dz, %i.ed                    ; 2 uses
  %i.ef = call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 16)
  %i.eg = xor i64 %i.ef, %i.ee                    ; 3 uses
  %i.eh = add i64 %i.eg, %i.ee                    ; 2 uses
  %i.ei = call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 42)
  %i.ej = xor i64 %i.ei, %i.eh                    ; 3 uses
  %i.ek = add i64 %i.ej, %i.eh                    ; 2 uses
  %i.el = call i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 12)
  %i.em = xor i64 %i.el, %i.ek                    ; 3 uses
  %i.en = add i64 %i.em, %i.ek                    ; 2 uses
  %i.eo = call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 31)
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = add i64 %i.en, %i.ea
  %i.er = add i64 %i.ec, 1
  %i.es = add i64 %i.er, %i.ep                    ; 3 uses
  %i.et = add i64 %i.eq, %i.es                    ; 2 uses
  %i.eu = call i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 16)
  %i.ev = xor i64 %i.eu, %i.et                    ; 3 uses
  %i.ew = add i64 %i.ev, %i.et                    ; 2 uses
  %i.ex = call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 32)
  %i.ey = xor i64 %i.ex, %i.ew                    ; 3 uses
  %i.ez = add i64 %i.ey, %i.ew                    ; 2 uses
  %i.fa = call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 24)
  %i.fb = xor i64 %i.fa, %i.ez                    ; 3 uses
  %i.fc = add i64 %i.fb, %i.ez                    ; 2 uses
  %i.fd = call i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 21)
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = add i64 %i.fc, %i.ec
  %i.fg = add i64 %i.dy, 2
  %i.fh = add i64 %i.fg, %i.fe                    ; 3 uses
  %i.fi = add i64 %i.ff, %i.fh                    ; 2 uses
  %i.fj = call i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 16)
  %i.fk = xor i64 %i.fj, %i.fi                    ; 3 uses
  %i.fl = add i64 %i.fk, %i.fi                    ; 2 uses
  %i.fm = call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 42)
  %i.fn = xor i64 %i.fm, %i.fl                    ; 3 uses
  %i.fo = add i64 %i.fn, %i.fl                    ; 2 uses
  %i.fp = call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 12)
  %i.fq = xor i64 %i.fp, %i.fo                    ; 3 uses
  %i.fr = add i64 %i.fq, %i.fo                    ; 2 uses
  %i.fs = call i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 31)
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = add i64 %i.fr, %i.dy
  %i.fv = add i64 %i.ea, 3
  %i.fw = add i64 %i.fv, %i.ft                    ; 3 uses
  %i.fx = add i64 %i.fu, %i.fw                    ; 3 uses
  %i.fy = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 16)
  %i.fz = xor i64 %i.fy, %i.fx
  store i64 %i.fx, ptr %.phi.trans.insert.i46, align 8, !tbaa !18
  store i64 %i.fz, ptr %.sroa.4.0..sroa_idx.i53, align 8, !tbaa !18
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc54, %._crit_edge.i45
  %i.ga = phi i64 [ %i.fx, %.noexc54 ], [ %.pre.i49, %._crit_edge.i45 ]
  %i.gb = phi i32 [ 1, %.noexc54 ], [ %i.dp, %._crit_edge.i45 ]
  store i32 %i.gb, ptr %i.dh, align 8, !tbaa !53
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %bb.q, %.noexc42
  %i.gc = phi i32 [ 64, %.noexc42 ], [ %i.dl, %bb.q ]
  %i.gd = phi i64 [ %i.ga, %.noexc42 ], [ %.sroa.10.3, %bb.q ] ; 2 uses
  %i.ge = lshr i64 %i.gd, %i.dg                   ; 3 uses
  %i.gf = shl i64 %i.ge, %i.dg
  %i.gg = sub i64 %i.gd, %i.gf                    ; 2 uses
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = sub i32 %i.gc, %i.df                    ; 2 uses
  %.not87 = icmp sgt i32 %i.e, %i.gh
  br i1 %.not87, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43, label %bb.q, !llvm.loop !126

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43: ; preds = %._crit_edge.i.i38
  %.not33 = icmp eq i32 %i.gh, %i.cx
  br i1 %.not33, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43
  %i.gj = load ptr, ptr %9, align 8, !tbaa !46
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !44 ; 2 uses
  %i.gm = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %sext = shl i64 %i.cw, 32
  %i.gn = ashr exact i64 %sext, 30
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !38
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !23
  %sext98 = shl i64 %i.gg, 32
  %i.gt = ashr exact i64 %sext98, 30
  %i.gu = getelementptr inbounds i8, ptr %i.gm, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !38
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !23
  %i.gz = load ptr, ptr %5, align 8, !tbaa !58
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.n
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !35
  %i.hc = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.hd = getelementptr inbounds [12 x i8], ptr %i.hc, i64 %i.gq ; 2 uses
  %i.he = getelementptr inbounds [12 x i8], ptr %i.hc, i64 %i.gw ; 2 uses
  %i.hf = load <2 x float>, ptr %i.he, align 4, !tbaa !55
  %i.hg = load <2 x float>, ptr %i.hd, align 4, !tbaa !55
  %i.hh = fsub <2 x float> %i.hf, %i.hg           ; 2 uses
  %i.hi = fmul <2 x float> %i.hh, %i.hh           ; 2 uses
  %shift = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.hi, %shift
  %i.hj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !55
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !55
  %i.ho = fsub float %i.hl, %i.hn                 ; 2 uses
  %i.hp = fmul float %i.ho, %i.ho
  %i.hq = fadd float %i.hj, %i.hp
  %sqrt = call float @llvm.sqrt.f32(float %i.hq)
  %i.hr = fpext float %sqrt to double
  %i.hs = load double, ptr %8, align 8, !tbaa !23
  %i.ht = fdiv double %i.hr, %i.hs
  %i.hu = call double @llvm.floor.f64(double %i.ht)
  %i.hv = fptosi double %i.hu to i32
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hw ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !23
  %i.hz = call double @llvm.fmuladd.f64(double %i.gs, double %i.gy, double %i.hy)
  store double %i.hz, ptr %i.hx, align 8, !tbaa !23
  br label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread

bb.ab:                                            ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit, %.lr.ph.split
  %i.ia = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.body.sink.split:                                 ; preds = %bb.x, %bb.y, %bb.m, %bb.n
  %.sink = phi ptr [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.dt, %bb.y ], [ %i.dt, %bb.x ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.an, %bb.m ], [ %.pn.pn23.i, %bb.n ], [ %.pn.pn23.i60, %bb.y ], [ %i.dx, %bb.x ]
  call void @__cxa_free_exception(ptr %.sink) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ab, %bb.x, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.m ], [ %i.dx, %bb.x ], [ %i.ia, %bb.ab ], [ %eh.lpad-body.ph, %.body.sink.split ] ; 2 uses
  %i.ib = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.ic = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.id = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #15
  %i.ie = icmp eq i32 %i.ic, %i.id
  br i1 %i.ie, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.body
  %i.if = call ptr @__cxa_begin_catch(ptr %i.ib) #15
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.if) #25
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread: ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43, %bb.aa
  %i.ig = add nsw i64 %.097, 1
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !15
  %.not.not = icmp slt i64 %.097, %i.ih
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit43.thread, %.lr.ph, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.c
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre)
  ret void

bb.af:                                            ; preds = %bb.b, %bb.ac, %_ZN3gmx22UniformIntDistributionIiEC2Eii.exit
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #27
  unreachable

bb.ag:                                            ; preds = %.body
  call void @__clang_call_terminate(ptr %i.ib) #27
  unreachable
}

declare noundef i32 @_Z22gmx_omp_get_thread_numv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #16

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #15

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #17

; Function Attrs: nounwind
declare !callback !63 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z34calc_radial_distribution_histogramP10gmx_sans_tPA3_fS2_PKiidbbfj.omp_outlined.17(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = invoke noundef i32 @_Z22gmx_omp_get_thread_numv()
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !38    ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.h, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !38
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.h) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %.not30 = icmp sgt i32 %i.k, %i.j
  br i1 %.not30, label %._crit_edge32, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.l = sext i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.02831 = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bd, %._crit_edge ] ; 4 uses
  %i.m = icmp sgt i32 %.02831, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.n = load ptr, ptr %7, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.r = zext nneg i32 %.02831 to i64             ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !38
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %3, align 8, !tbaa !58
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.l
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.u ; 2 uses
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ae = load double, ptr %i.v, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds [12 x i8], ptr %i.z, i64 %i.ah ; 2 uses
  %i.al = load <2 x float>, ptr %i.ak, align 4, !tbaa !55
  %i.am = fsub <2 x float> %i.al, %i.ab           ; 2 uses
  %i.an = fmul <2 x float> %i.am, %i.am           ; 2 uses
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.an, %shift
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !55
  %i.ar = fsub float %i.aq, %i.ad                 ; 2 uses
  %i.as = fmul float %i.ar, %i.ar
  %i.at = fadd float %i.ao, %i.as
  %sqrt = call float @llvm.sqrt.f32(float %i.at)
  %i.au = fpext float %sqrt to double
  %i.av = load double, ptr %6, align 8, !tbaa !23
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = call double @llvm.floor.f64(double %i.aw)
  %i.ay = fptosi double %i.ax to i32
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.az ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !23
  %i.bc = call double @llvm.fmuladd.f64(double %i.ae, double %i.aj, double %i.bb)
  store double %i.bc, ptr %i.ba, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.bd = add i32 %.02831, 1
  %exitcond34.not = icmp eq i32 %.02831, %i.j
  br i1 %exitcond34.not, label %._crit_edge32, label %.preheader

._crit_edge32:                                    ; preds = %._crit_edge, %bb.c
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge32, %bb.b
  call void @__kmpc_barrier(ptr nonnull @2, i32 %.pre)
  ret void

bb.f:                                             ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #27
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
end_hunk_0
