Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/train_share_states?download=true
inline.NumInlined: 659
inline.NumDeleted: 262
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM18MultiValBinWrapper21CopyMultiValBinSubsetERKSt6vectorIiSaIiEERKS1_ISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS7_EESaISA_EERKS1_IaSaIaEEPKii:bb.a
  %i.aat = ptrtoint ptr %i.aaq to i64
  %i.aau = sub i64 %i.aas, %i.aat
  call void @_ZdlPvm(ptr noundef nonnull %i.aaq, i64 noundef %i.aau) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  %i.aav = load ptr, ptr %9, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i370 = icmp eq ptr %i.aav, null
  br i1 %.not.i.i.i370, label %_ZNSt6vectorIjSaIjEED2Ev.exit371, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.aaw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !73
  %i.aay = ptrtoint ptr %i.aax to i64
  %i.aaz = ptrtoint ptr %i.aav to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  call void @_ZdlPvm(ptr noundef nonnull %i.aav, i64 noundef %i.aba) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit371

_ZNSt6vectorIjSaIjEED2Ev.exit371:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.abb = load ptr, ptr %8, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i372 = icmp eq ptr %i.abb, null
  br i1 %.not.i.i.i372, label %_ZNSt6vectorIjSaIjEED2Ev.exit373, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit371
  %i.abc = load ptr, ptr %i.yp, align 8, !tbaa !73
  %i.abd = ptrtoint ptr %i.abc to i64
  %i.abe = ptrtoint ptr %i.abb to i64
  %i.abf = sub i64 %i.abd, %i.abe
  call void @_ZdlPvm(ptr noundef nonnull %i.abb, i64 noundef %i.abf) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit373

_ZNSt6vectorIjSaIjEED2Ev.exit373:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit371, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  %i.abg = load ptr, ptr %7, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i374 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i374, label %_ZNSt6vectorIjSaIjEED2Ev.exit375, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit373
  %i.abh = load ptr, ptr %i.yu, align 8, !tbaa !73
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = ptrtoint ptr %i.abg to i64
  %i.abk = sub i64 %i.abi, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.abk) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit375

_ZNSt6vectorIjSaIjEED2Ev.exit375:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit373, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  %.pre604 = load ptr, ptr %6, align 8, !tbaa !67
  br label %bb.dn

bb.dj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.abl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !73
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.aac to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %i.aac, i64 noundef %i.abp) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit377

_ZNSt6vectorIjSaIjEED2Ev.exit377:                 ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  %i.abq = load ptr, ptr %9, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i378 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIjSaIjEED2Ev.exit379, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit377
  %i.abr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !73
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = ptrtoint ptr %i.abq to i64
  %i.abv = sub i64 %i.abt, %i.abu
  call void @_ZdlPvm(ptr noundef nonnull %i.abq, i64 noundef %i.abv) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit379

_ZNSt6vectorIjSaIjEED2Ev.exit379:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit377, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.abw = load ptr, ptr %8, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.abw, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorIjSaIjEED2Ev.exit381, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit379
  %i.abx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !73
  %i.abz = ptrtoint ptr %i.aby to i64
  %i.aca = ptrtoint ptr %i.abw to i64
  %i.acb = sub i64 %i.abz, %i.aca
  call void @_ZdlPvm(ptr noundef nonnull %i.abw, i64 noundef %i.acb) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit381

_ZNSt6vectorIjSaIjEED2Ev.exit381:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit379, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  %i.acc = load ptr, ptr %7, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i382 = icmp eq ptr %i.acc, null
  br i1 %.not.i.i.i382, label %_ZNSt6vectorIjSaIjEED2Ev.exit383, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit381
  %i.acd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !73
  %i.acf = ptrtoint ptr %i.ace to i64
  %i.acg = ptrtoint ptr %i.acc to i64
  %i.ach = sub i64 %i.acf, %i.acg
  call void @_ZdlPvm(ptr noundef nonnull %i.acc, i64 noundef %i.ach) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit383

_ZNSt6vectorIjSaIjEED2Ev.exit383:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit381, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %.loopexit.split-lp447.loopexit.split-lp

bb.dn:                                            ; preds = %._crit_edge550.thread, %bb.o, %bb.z, %_ZNSt6vectorIjSaIjEED2Ev.exit375
  %i.aci = phi ptr [ %i.eg, %._crit_edge550.thread ], [ %i.eg, %bb.o ], [ %i.eg, %bb.z ], [ %.pre604, %_ZNSt6vectorIjSaIjEED2Ev.exit375 ] ; 3 uses
  %.not.i.i.i384 = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i384, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.acj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !68
  %i.acl = ptrtoint ptr %i.ack to i64
  %i.acm = ptrtoint ptr %i.aci to i64
  %i.acn = sub i64 %i.acl, %i.acm
  call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.acn) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret void

.loopexit.split-lp447.loopexit.split-lp:          ; preds = %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIjSaIjEED2Ev.exit383
  %.pn178.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp806, %_ZNSt6vectorIjSaIjEED2Ev.exit383 ], [ %lpad.loopexit.split-lp831, %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.aco = load ptr, ptr %6, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i385 = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i385, label %_ZNSt6vectorIiSaIiEED2Ev.exit386, label %bb.dp

bb.dp:                                            ; preds = %.loopexit.split-lp447.loopexit.split-lp
  %i.acp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !68
  %i.acr = ptrtoint ptr %i.acq to i64
  %i.acs = ptrtoint ptr %i.aco to i64
  %i.act = sub i64 %i.acr, %i.acs
  call void @_ZdlPvm(ptr noundef nonnull %i.aco, i64 noundef %i.act) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit386

_ZNSt6vectorIiSaIiEED2Ev.exit386:                 ; preds = %.loopexit.split-lp447.loopexit.split-lp, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  resume { ptr, i32 } %.pn178.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM18MultiValBinWrapper13ResizeHistBufEPSt6vectorIdNS_6Common18AlignmentAllocatorIdLm32EEEEPNS_11MultiValBinEPd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((124, 132), (152, 160)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.d, ptr %i.e, align 4, !tbaa !50
  %i.f = add nsw i32 %i.d, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = shl nsw i32 %i.g, 5                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.h, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %3, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.l = load i32, ptr %i.k, align 4, !tbaa !58
  %i.m = sext i32 %i.l to i64
  %i.n = sext i32 %i.h to i64
  %i.o = shl nsw i64 %i.n, 1
  %i.p = mul nsw i64 %i.o, %i.m                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.s = load ptr, ptr %1, align 8, !tbaa !35
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.p
  br i1 %i.x, label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE6resizeEm.exit, label %bb.b

_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE6resizeEm.exit: ; preds = %bb.a
  %i.y = sub nuw i64 %i.p, %i.w
  tail call void @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.y)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE6resizeEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !35     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !201
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 1152921504606846975        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not37 = icmp ult i64 %i.m, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !46
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !36
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975) ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.u) #3
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.w, ptr null ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.g ; 2 uses
  %i.y = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !46
  %.not13.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.0.i.i.i.i, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.d, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.z = load double, ptr %.sroa.010.014.i.i, align 8, !tbaa !46
  store double %i.z, ptr %.015.i.i, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !200

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit
  %.not.i45 = icmp eq ptr %i.d, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit
  tail call void @free(ptr noundef nonnull %i.d) #3
  br label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46

_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, %bb.e
  store ptr %.0.i.i.i.i, ptr %0, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.t
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !201
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19TrainingShareStates14CalcBinOffsetsERKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS3_EESaIS6_EEPS1_IjSaIjEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 32 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 21 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 32 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not.i.i156 = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i156, label %_ZNSt6vectorIjSaIjEE5clearEv.exit158, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157:     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr %i.e, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit158

_ZNSt6vectorIjSaIjEE5clearEv.exit158:             ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157
  %i.h = phi ptr [ %i.g, %_ZNSt6vectorIjSaIjEE5clearEv.exit ], [ %i.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i157 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.k = load ptr, ptr %1, align 8, !tbaa !76     ; 5 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0                     ; 2 uses
  br i1 %3, label %.preheader379, label %.preheader385

.preheader385:                                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit158
  br i1 %i.q, label %.lr.ph436.preheader, label %._crit_edge472

.lr.ph436.preheader:                              ; preds = %.preheader385
  %wide.trip.count517 = and i64 %i.o, 2147483647
  br label %.lr.ph436

.preheader379:                                    ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit158
  br i1 %i.q, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %.preheader379
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  br label %bb.g

._crit_edge499.loopexit:                          ; preds = %bb.az
  %.pre569 = load ptr, ptr %i.f, align 8, !tbaa !40
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %.preheader379
  %i.t = phi ptr [ %i.h, %.preheader379 ], [ %.pre569, %._crit_edge499.loopexit ] ; 5 uses
  %.0369.lcssa = phi i32 [ 0, %.preheader379 ], [ %.4, %._crit_edge499.loopexit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge499
  store i32 %.0369.lcssa, ptr %i.t, align 4, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.w, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %._crit_edge499
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !41   ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %i.ag = select i1 %i.ae, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 3 uses
  store i32 %.0369.lcssa, ptr %i.aj, align 4, !tbaa !42
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ao) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !41
  store ptr %i.al, ptr %i.f, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.ap, ptr %i.u, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.g:                                             ; preds = %.lr.ph498, %bb.az
  %indvars.iv546 = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next547, %bb.az ] ; 3 uses
  %i.aq = phi ptr [ %i.k, %.lr.ph498 ], [ %i.jy, %bb.az ]
  %.0369495 = phi i32 [ 0, %.lr.ph498 ], [ %.4, %bb.az ] ; 5 uses
  %.0373494 = phi i32 [ 0, %.lr.ph498 ], [ %.4377, %bb.az ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv546 ; 6 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load i8, ptr %i.at, align 8, !tbaa !97, !range !32, !noundef !33
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %.preheader378

.preheader378:                                    ; preds = %bb.g
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !98
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph476.preheader, label %._crit_edge477

.lr.ph476.preheader:                              ; preds = %.preheader378
  %.pre564 = load ptr, ptr %i.f, align 8, !tbaa !40
  %.pre565 = load ptr, ptr %i.r, align 8, !tbaa !73
  br label %.lr.ph476

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 89
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !215, !range !32, !noundef !33
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %bb.h
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !98
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph490, label %._crit_edge491

._crit_edge491:                                   ; preds = %bb.ab, %.preheader
  %i.bd = phi ptr [ %i.as, %.preheader ], [ %i.es, %bb.ab ]
  %.1374.lcssa = phi i32 [ %.0373494, %.preheader ], [ %i.er, %bb.ab ] ; 5 uses
  %.1370.lcssa = phi i32 [ %.0369495, %.preheader ], [ %i.el, %bb.ab ] ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i159 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i159, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge491
  store i32 %.1374.lcssa, ptr %i.be, align 4, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166

bb.j:                                             ; preds = %._crit_edge491
  %i.bh = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 5 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775804
  br i1 %i.bl, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160: ; preds = %bb.j
  %i.bm = ashr exact i64 %i.bk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i161, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 2305843009213693951)
  %i.bq = select i1 %i.bo, i64 2305843009213693951, i64 %i.bp ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i162)
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #23 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  store i32 %.1374.lcssa, ptr %i.bt, align 4, !tbaa !42
  %i.bu = icmp sgt i64 %i.bk, 0
  br i1 %i.bu, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163

bb.l:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr align 4 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163: ; preds = %bb.l, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i160
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.not.i17.i.i164 = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.by) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i163
  store ptr %i.bs, ptr %2, align 8, !tbaa !41
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bz, ptr %i.s, align 8, !tbaa !73
  %.pre568 = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166

_ZNSt6vectorIjSaIjEE9push_backERKj.exit166:       ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165
  %i.ca = phi ptr [ %i.bd, %bb.i ], [ %.pre568, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i165 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !42
  %i.cf = icmp eq i32 %.1374.lcssa, %i.ce
  br i1 %i.cf, label %bb.az, label %bb.ac

.lr.ph490:                                        ; preds = %.preheader, %bb.ab
  %indvars.iv543 = phi i64 [ %indvars.iv.next544, %bb.ab ], [ 0, %.preheader ] ; 3 uses
  %i.cg = phi ptr [ %i.es, %bb.ab ], [ %i.as, %.preheader ]
  %.1370488 = phi i32 [ %i.el, %bb.ab ], [ %.0369495, %.preheader ] ; 3 uses
  %.1374487 = phi i32 [ %i.er, %bb.ab ], [ %.0373494, %.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv543 ; 2 uses
  %i.ck = or i64 %indvars.iv543, %indvars.iv546
  %or.cond = icmp eq i64 %i.ck, 0
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph490
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !101
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 156
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !118
  %.not154 = icmp eq i32 %i.cn, 0
  br i1 %.not154, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = add i32 %.1374487, 1
  %i.cp = add i32 %.1370488, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph490
  %.2375 = phi i32 [ %.1374487, %bb.n ], [ %i.co, %bb.o ], [ %.1374487, %.lr.ph490 ] ; 3 uses
  %.2371 = phi i32 [ %.1370488, %bb.n ], [ %i.cp, %bb.o ], [ %.1370488, %.lr.ph490 ] ; 3 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i167 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i167, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.2375, ptr %i.cq, align 4, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174

bb.r:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775804
  br i1 %i.cx, label %bb.s, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.r
  %i.cy = ashr exact i64 %i.cw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i169 = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i169, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 2305843009213693951)
  %i.dc = select i1 %i.da, i64 2305843009213693951, i64 %i.db ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i170)
  %i.dd = shl nuw nsw i64 %i.dc, 2
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #23 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i32 %.2375, ptr %i.df, align 4, !tbaa !42
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.t, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171

bb.t:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.de, ptr align 4 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171: ; preds = %bb.t, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i168
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %.not.i17.i.i172 = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i172, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dk) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173: ; preds = %bb.u, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i171
  store ptr %i.de, ptr %2, align 8, !tbaa !41
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dl, ptr %i.s, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174

_ZNSt6vectorIjSaIjEE9push_backERKj.exit174:       ; preds = %bb.q, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i173
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !40  ; 5 uses
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !73
  %.not.i175 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i175, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174
  store i32 %.2371, ptr %i.dm, align 4, !tbaa !42
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store ptr %i.do, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit174
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 5 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %bb.x, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176: ; preds = %bb.w
  %i.du = ashr exact i64 %i.ds, 2                 ; 3 uses
  %.sroa.speculated.i.i.i177 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i177, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i.i.i178 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i178)
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #23 ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 3 uses
  store i32 %.2371, ptr %i.eb, align 4, !tbaa !42
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.y, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179

bb.y:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179: ; preds = %bb.y, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i176
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.not.i17.i.i180 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i180, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.ef, %i.dr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.eg) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181: ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i179
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !41
  store ptr %i.ed, ptr %i.f, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  store ptr %i.eh, ptr %i.r, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182

_ZNSt6vectorIjSaIjEE9push_backERKj.exit182:       ; preds = %bb.v, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181
  %i.ei = phi ptr [ %i.dm, %bb.v ], [ %i.eb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i181 ] ; 2 uses
  %i.ej = load ptr, ptr %i.cj, align 8, !tbaa !101 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !119 ; 2 uses
  %i.el = add i32 %i.ek, %.2371                   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 156
  %i.en = load i32, ptr %i.em, align 4, !tbaa !118
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182
  %i.ep = load i32, ptr %i.ei, align 4, !tbaa !42
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.ei, align 4, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit182
  %i.er = add i32 %i.ek, %.2375                   ; 2 uses
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1 ; 2 uses
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !98
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next544, %i.eu
  br i1 %i.ev, label %.lr.ph490, label %._crit_edge491, !llvm.loop !202

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 404)
  br label %bb.az

bb.ad:                                            ; preds = %bb.h
  %i.ew = add i32 %.0373494, 1                    ; 2 uses
  %i.ex = add i32 %.0369495, 1                    ; 2 uses
  %i.ey = load i32, ptr %i.as, align 8, !tbaa !98
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph483, label %._crit_edge484

._crit_edge484:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206, %bb.ad
  %i.fa = phi ptr [ %i.as, %bb.ad ], [ %i.hv, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ]
  %.3376.lcssa = phi i32 [ %i.ew, %bb.ad ], [ %i.ig, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ] ; 5 uses
  %.3372.lcssa = phi i32 [ %i.ex, %bb.ad ], [ %i.if, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ] ; 2 uses
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.fc = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i183 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i183, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge484
  store i32 %.3376.lcssa, ptr %i.fb, align 4, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store ptr %i.fd, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190

bb.af:                                            ; preds = %._crit_edge484
  %i.fe = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 5 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775804
  br i1 %i.fi, label %bb.ag, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184: ; preds = %bb.af
  %i.fj = ashr exact i64 %i.fh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i185 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i185, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 2305843009213693951)
  %i.fn = select i1 %i.fl, i64 2305843009213693951, i64 %i.fm ; 3 uses
  %.not.i.i.i186 = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i186)
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #23 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store i32 %.3376.lcssa, ptr %i.fq, align 4, !tbaa !42
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.ah, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187

bb.ah:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fp, ptr align 4 %i.fe, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187: ; preds = %bb.ah, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i184
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %.not.i17.i.i188 = icmp eq ptr %i.fe, null
  br i1 %.not.i17.i.i188, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187
  %i.ft = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fv) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189: ; preds = %bb.ai, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i187
  store ptr %i.fp, ptr %2, align 8, !tbaa !41
  store ptr %i.fs, ptr %i.b, align 8, !tbaa !40
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.fw, ptr %i.s, align 8, !tbaa !73
  %.pre567 = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190

_ZNSt6vectorIjSaIjEE9push_backERKj.exit190:       ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189
  %i.fx = phi ptr [ %i.fa, %bb.ae ], [ %.pre567, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i189 ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !49
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !42
  %i.gc = icmp eq i32 %.3376.lcssa, %i.gb
  br i1 %i.gc, label %bb.az, label %bb.at

.lr.ph483:                                        ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206
  %indvars.iv540 = phi i64 [ %indvars.iv.next541, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ], [ 0, %bb.ad ] ; 2 uses
  %.3372480 = phi i32 [ %i.if, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ], [ %i.ex, %bb.ad ] ; 3 uses
  %.3376479 = phi i32 [ %i.ig, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206 ], [ %i.ew, %bb.ad ] ; 3 uses
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.ge = load ptr, ptr %i.s, align 8, !tbaa !73
  %.not.i191 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i191, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph483
  store i32 %.3376479, ptr %i.gd, align 4, !tbaa !42
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store ptr %i.gf, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198

bb.ak:                                            ; preds = %.lr.ph483
  %i.gg = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 5 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775804
  br i1 %i.gk, label %bb.al, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192: ; preds = %bb.ak
  %i.gl = ashr exact i64 %i.gj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i193 = tail call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i193, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 2305843009213693951)
  %i.gp = select i1 %i.gn, i64 2305843009213693951, i64 %i.go ; 3 uses
  %.not.i.i.i194 = icmp ne i64 %i.gp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i194)
  %i.gq = shl nuw nsw i64 %i.gp, 2
  %i.gr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #23 ; 4 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gj ; 2 uses
  store i32 %.3376479, ptr %i.gs, align 4, !tbaa !42
  %i.gt = icmp sgt i64 %i.gj, 0
  br i1 %i.gt, label %bb.am, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195

bb.am:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gr, ptr align 4 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195: ; preds = %bb.am, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i192
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %.not.i17.i.i196 = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i196, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195
  %i.gv = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gx) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197: ; preds = %bb.an, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i195
  store ptr %i.gr, ptr %2, align 8, !tbaa !41
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !40
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.gy, ptr %i.s, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198

_ZNSt6vectorIjSaIjEE9push_backERKj.exit198:       ; preds = %bb.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i197
  %i.gz = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.ha = load ptr, ptr %i.r, align 8, !tbaa !73
  %.not.i199 = icmp eq ptr %i.gz, %i.ha
  br i1 %.not.i199, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198
  store i32 %.3372480, ptr %i.gz, align 4, !tbaa !42
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store ptr %i.hb, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206

bb.ap:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit198
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.hf = sub i64 %i.hd, %i.he                    ; 5 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775804
  br i1 %i.hg, label %bb.aq, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200: ; preds = %bb.ap
  %i.hh = ashr exact i64 %i.hf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i201 = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i201, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = tail call i64 @llvm.umin.i64(i64 %i.hi, i64 2305843009213693951)
  %i.hl = select i1 %i.hj, i64 2305843009213693951, i64 %i.hk ; 3 uses
  %.not.i.i.i202 = icmp ne i64 %i.hl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i202)
  %i.hm = shl nuw nsw i64 %i.hl, 2
  %i.hn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #23 ; 4 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %i.hf ; 2 uses
  store i32 %.3372480, ptr %i.ho, align 4, !tbaa !42
  %i.hp = icmp sgt i64 %i.hf, 0
  br i1 %i.hp, label %bb.ar, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203

bb.ar:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hn, ptr align 4 %i.hc, i64 %i.hf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203: ; preds = %bb.ar, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i200
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %.not.i17.i.i204 = icmp eq ptr %i.hc, null
  br i1 %.not.i17.i.i204, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203
  %i.hr = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.hs, %i.he
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.ht) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205: ; preds = %bb.as, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i203
  store ptr %i.hn, ptr %i.d, align 8, !tbaa !41
  store ptr %i.hq, ptr %i.f, align 8, !tbaa !40
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hl
  store ptr %i.hu, ptr %i.r, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit206

_ZNSt6vectorIjSaIjEE9push_backERKj.exit206:       ; preds = %bb.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i205
  %i.hv = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !99
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv540
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !101 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !119
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 156
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !118
  %i.id = icmp eq i32 %i.ic, 0
  %i.ie = sext i1 %i.id to i32
  %spec.select = add nsw i32 %i.ia, %i.ie         ; 2 uses
  %i.if = add i32 %spec.select, %.3372480         ; 2 uses
  %i.ig = add i32 %spec.select, %.3376479         ; 2 uses
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1 ; 2 uses
  %i.ih = load i32, ptr %i.hv, align 8, !tbaa !98
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next541, %i.ii
  br i1 %i.ij, label %.lr.ph483, label %._crit_edge484, !llvm.loop !203

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 420)
  br label %bb.az

._crit_edge477:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %.preheader378
  %.lcssa = phi ptr [ %i.as, %.preheader378 ], [ %i.jr, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !49
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 -4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !42
  %i.io = add i32 %i.in, %.0369495
  br label %bb.az

.lr.ph476:                                        ; preds = %.lr.ph476.preheader, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ip = phi ptr [ %i.as, %.lr.ph476.preheader ], [ %i.jr, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.iq = phi ptr [ %.pre565, %.lr.ph476.preheader ], [ %i.js, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.ir = phi ptr [ %.pre564, %.lr.ph476.preheader ], [ %i.jt, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %indvars.iv537 = phi i64 [ 0, %.lr.ph476.preheader ], [ %indvars.iv.next538, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !41
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv537
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !42
  %i.iw = add i32 %i.iv, %.0369495                ; 2 uses
  %.not.i.i207 = icmp eq ptr %i.ir, %i.iq
  br i1 %.not.i.i207, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph476
  store i32 %i.iw, ptr %i.ir, align 4, !tbaa !42
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  store ptr %i.ix, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.av:                                            ; preds = %.lr.ph476
  %i.iy = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.iz = ptrtoint ptr %i.iq to i64
  %i.ja = ptrtoint ptr %i.iy to i64               ; 2 uses
  %i.jb = sub i64 %i.iz, %i.ja                    ; 5 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775804
  br i1 %i.jc, label %bb.aw, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.jd = ashr exact i64 %i.jb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 2305843009213693951)
  %i.jh = select i1 %i.jf, i64 2305843009213693951, i64 %i.jg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #23 ; 4 uses
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store i32 %i.iw, ptr %i.jk, align 4, !tbaa !42
  %i.jl = icmp sgt i64 %i.jb, 0
  br i1 %i.jl, label %bb.ax, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.ax:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jj, ptr align 4 %i.iy, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ax, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.jn = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = sub i64 %i.jo, %i.ja
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jp) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.jj, ptr %i.d, align 8, !tbaa !41
  store ptr %i.jm, ptr %i.f, align 8, !tbaa !40
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jh ; 2 uses
  store ptr %i.jq, ptr %i.r, align 8, !tbaa !73
  %.pre566 = load ptr, ptr %i.ar, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.au, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.jr = phi ptr [ %i.ip, %bb.au ], [ %.pre566, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.js = phi ptr [ %i.iq, %bb.au ], [ %i.jq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.jt = phi ptr [ %i.ix, %bb.au ], [ %i.jm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !98
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next538, %i.jv
  br i1 %i.jw, label %.lr.ph476, label %._crit_edge477, !llvm.loop !204

bb.az:                                            ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166, %bb.at, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190, %._crit_edge477
  %.4377 = phi i32 [ %.1374.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166 ], [ %.1374.lcssa, %bb.ac ], [ %.3376.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190 ], [ %.3376.lcssa, %bb.at ], [ %.0373494, %._crit_edge477 ]
  %.4 = phi i32 [ %.1370.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit166 ], [ %.1370.lcssa, %bb.ac ], [ %.3372.lcssa, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit190 ], [ %.3372.lcssa, %bb.at ], [ %i.io, %._crit_edge477 ] ; 2 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %i.jx = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.jy = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = shl i64 %i.kb, 29
  %i.kd = ashr i64 %i.kc, 32
  %i.ke = icmp slt i64 %indvars.iv.next547, %i.kd
  br i1 %i.ke, label %bb.g, label %._crit_edge499.loopexit, !llvm.loop !205

._crit_edge437:                                   ; preds = %._crit_edge
  %i.kf = sitofp i32 %.1147 to double
  %i.kg = fdiv double %.1149.lcssa, %i.kf
  %i.kh = fsub double 1.000000e+00, %i.kg
  %i.ki = fcmp ult double %i.kh, 2.500000e-01
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  br i1 %i.ki, label %.lr.ph471, label %.lr.ph453

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %._crit_edge
  %indvars.iv514 = phi i64 [ 0, %.lr.ph436.preheader ], [ %indvars.iv.next515, %._crit_edge ] ; 2 uses
  %.0146434 = phi i32 [ 0, %.lr.ph436.preheader ], [ %.1147, %._crit_edge ]
  %.0148433 = phi double [ 0.000000e+00, %.lr.ph436.preheader ], [ %.1149.lcssa, %._crit_edge ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv514
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !78 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 88
  %i.ko = load i8, ptr %i.kn, align 8, !tbaa !97, !range !32, !noundef !33
  %i.kp = trunc nuw i8 %i.ko to i1
  %.pre = load i32, ptr %i.km, align 8, !tbaa !98 ; 4 uses
  %spec.select670 = select i1 %i.kp, i32 %.pre, i32 1
  %.1147 = add nsw i32 %spec.select670, %.0146434 ; 2 uses
  %i.kq = icmp sgt i32 %.pre, 0
  br i1 %i.kq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph436
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !99 ; 5 uses
  %wide.trip.count = zext nneg i32 %.pre to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.kt = icmp ult i32 %.pre, 4
  br i1 %i.kt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.bb

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.1149431.epil.init = phi double [ %.0148433, %.lr.ph ], [ %i.ma, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod701 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod701)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.ba ] ; 2 uses
  %.1149431.epil = phi double [ %.1149431.epil.init, %.epil.preheader ], [ %i.kz, %bb.ba ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ba ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv.epil
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !101
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !117
  %i.ky = fsub double 1.000000e+00, %i.kx
  %i.kz = fadd double %.1149431.epil, %i.ky       ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.ba, !llvm.loop !206

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ba, %.lr.ph436
  %.1149.lcssa = phi double [ %.0148433, %.lr.ph436 ], [ %i.ma, %._crit_edge.loopexit.unr-lcssa ], [ %i.kz, %bb.ba ] ; 2 uses
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge437, label %.lr.ph436, !llvm.loop !207

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.bb ] ; 5 uses
  %.1149431 = phi double [ %.0148433, %.lr.ph.new ], [ %i.ma, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.bb ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !101
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !117
  %i.le = fsub double 1.000000e+00, %i.ld
  %i.lf = fadd double %.1149431, %i.le
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !101
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !117
  %i.ll = fsub double 1.000000e+00, %i.lk
  %i.lm = fadd double %i.lf, %i.ll
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !101
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !117
  %i.ls = fsub double 1.000000e+00, %i.lr
  %i.lt = fadd double %i.lm, %i.ls
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !101
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 40
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !117
  %i.lz = fsub double 1.000000e+00, %i.ly
  %i.ma = fadd double %i.lt, %i.lz                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bb, !llvm.loop !208

._crit_edge454:                                   ; preds = %.loopexit383
  %i.mb = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !73
  %.not.i.i208 = icmp eq ptr %i.mb, %i.md
  br i1 %.not.i.i208, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge454
  store i32 %.2142, ptr %i.mb, align 4, !tbaa !42
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store ptr %i.me, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215

bb.bd:                                            ; preds = %._crit_edge454
  %i.mf = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.mg = ptrtoint ptr %i.mb to i64
  %i.mh = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mi = sub i64 %i.mg, %i.mh                    ; 5 uses
  %i.mj = icmp eq i64 %i.mi, 9223372036854775804
  br i1 %i.mj, label %bb.be, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209: ; preds = %bb.bd
  %i.mk = ashr exact i64 %i.mi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i210 = tail call i64 @llvm.umax.i64(i64 %i.mk, i64 1)
  %i.ml = add nsw i64 %.sroa.speculated.i.i.i.i210, %i.mk ; 2 uses
  %i.mm = icmp ult i64 %i.ml, %i.mk
  %i.mn = tail call i64 @llvm.umin.i64(i64 %i.ml, i64 2305843009213693951)
  %i.mo = select i1 %i.mm, i64 2305843009213693951, i64 %i.mn ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.mo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.mp = shl nuw nsw i64 %i.mo, 2
  %i.mq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mp) #23 ; 4 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.mi ; 2 uses
  store i32 %.2142, ptr %i.mr, align 4, !tbaa !42
  %i.ms = icmp sgt i64 %i.mi, 0
  br i1 %i.ms, label %bb.bf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212

bb.bf:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mq, ptr align 4 %i.mf, i64 %i.mi, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212: ; preds = %bb.bf, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i209
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %.not.i17.i.i.i213 = icmp eq ptr %i.mf, null
  br i1 %.not.i17.i.i.i213, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212
  %i.mu = load ptr, ptr %i.mc, align 8, !tbaa !73
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = sub i64 %i.mv, %i.mh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.mw) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214: ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i212
  store ptr %i.mq, ptr %2, align 8, !tbaa !41
  store ptr %i.mt, ptr %i.b, align 8, !tbaa !40
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mo
  store ptr %i.mx, ptr %i.mc, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215

_ZNSt6vectorIjSaIjEE9push_backEOj.exit215:        ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i214
  %i.my = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !73
  %.not.i216 = icmp eq ptr %i.my, %i.na
  br i1 %.not.i216, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215
  store i32 %.2368, ptr %i.my, align 4, !tbaa !42
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  store ptr %i.nb, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

bb.bi:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit215
  %i.nc = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.nd = ptrtoint ptr %i.my to i64
  %i.ne = ptrtoint ptr %i.nc to i64               ; 2 uses
  %i.nf = sub i64 %i.nd, %i.ne                    ; 5 uses
  %i.ng = icmp eq i64 %i.nf, 9223372036854775804
  br i1 %i.ng, label %bb.bj, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217: ; preds = %bb.bi
  %i.nh = ashr exact i64 %i.nf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i218 = tail call i64 @llvm.umax.i64(i64 %i.nh, i64 1)
  %i.ni = add nsw i64 %.sroa.speculated.i.i.i218, %i.nh ; 2 uses
  %i.nj = icmp ult i64 %i.ni, %i.nh
  %i.nk = tail call i64 @llvm.umin.i64(i64 %i.ni, i64 2305843009213693951)
  %i.nl = select i1 %i.nj, i64 2305843009213693951, i64 %i.nk ; 3 uses
  %.not.i.i.i219 = icmp ne i64 %i.nl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i219)
  %i.nm = shl nuw nsw i64 %i.nl, 2
  %i.nn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #23 ; 4 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.nf ; 2 uses
  store i32 %.2368, ptr %i.no, align 4, !tbaa !42
  %i.np = icmp sgt i64 %i.nf, 0
  br i1 %i.np, label %bb.bk, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220

bb.bk:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nn, ptr align 4 %i.nc, i64 %i.nf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220: ; preds = %bb.bk, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i217
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 4 ; 2 uses
  %.not.i17.i.i221 = icmp eq ptr %i.nc, null
  br i1 %.not.i17.i.i221, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220
  %i.nr = load ptr, ptr %i.mz, align 8, !tbaa !73
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = sub i64 %i.ns, %i.ne
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.nt) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222: ; preds = %bb.bl, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i220
  store ptr %i.nn, ptr %i.d, align 8, !tbaa !41
  store ptr %i.nq, ptr %i.f, align 8, !tbaa !40
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nl
  store ptr %i.nu, ptr %i.mz, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

.lr.ph453:                                        ; preds = %._crit_edge437, %.loopexit383
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %.loopexit383 ], [ 0, %._crit_edge437 ] ; 2 uses
  %i.nv = phi ptr [ %i.tb, %.loopexit383 ], [ %i.k, %._crit_edge437 ]
  %.0140451 = phi i32 [ %.2142, %.loopexit383 ], [ 1, %._crit_edge437 ] ; 5 uses
  %.0366450 = phi i32 [ %.2368, %.loopexit383 ], [ 1, %._crit_edge437 ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv525 ; 4 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !78 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 88
  %i.nz = load i8, ptr %i.ny, align 8, !tbaa !97, !range !32, !noundef !33
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %.preheader382, label %bb.bw

.preheader382:                                    ; preds = %.lr.ph453
  %i.ob = load i32, ptr %i.nx, align 8, !tbaa !98
  %i.oc = icmp sgt i32 %i.ob, 0
  br i1 %i.oc, label %.lr.ph447, label %.loopexit383

.lr.ph447:                                        ; preds = %.preheader382, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239
  %indvars.iv522 = phi i64 [ %indvars.iv.next523, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ], [ 0, %.preheader382 ] ; 2 uses
  %.1141445 = phi i32 [ %i.qf, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ], [ %.0140451, %.preheader382 ] ; 3 uses
  %.1367444 = phi i32 [ %i.qg, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ], [ %.0366450, %.preheader382 ] ; 3 uses
  %i.od = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.oe = load ptr, ptr %i.kj, align 8, !tbaa !73
  %.not.i.i224 = icmp eq ptr %i.od, %i.oe
  br i1 %.not.i.i224, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph447
  store i32 %.1141445, ptr %i.od, align 4, !tbaa !42
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  store ptr %i.of, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231

bb.bn:                                            ; preds = %.lr.ph447
  %i.og = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.oh = ptrtoint ptr %i.od to i64
  %i.oi = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oj = sub i64 %i.oh, %i.oi                    ; 5 uses
  %i.ok = icmp eq i64 %i.oj, 9223372036854775804
  br i1 %i.ok, label %bb.bo, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225: ; preds = %bb.bn
  %i.ol = ashr exact i64 %i.oj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i226 = tail call i64 @llvm.umax.i64(i64 %i.ol, i64 1)
  %i.om = add nsw i64 %.sroa.speculated.i.i.i.i226, %i.ol ; 2 uses
  %i.on = icmp ult i64 %i.om, %i.ol
  %i.oo = tail call i64 @llvm.umin.i64(i64 %i.om, i64 2305843009213693951)
  %i.op = select i1 %i.on, i64 2305843009213693951, i64 %i.oo ; 3 uses
  %.not.i.i.i.i227 = icmp ne i64 %i.op, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i227)
  %i.oq = shl nuw nsw i64 %i.op, 2
  %i.or = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oq) #23 ; 4 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 %i.oj ; 2 uses
  store i32 %.1141445, ptr %i.os, align 4, !tbaa !42
  %i.ot = icmp sgt i64 %i.oj, 0
  br i1 %i.ot, label %bb.bp, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228

bb.bp:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.or, ptr align 4 %i.og, i64 %i.oj, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228: ; preds = %bb.bp, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i225
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %.not.i17.i.i.i229 = icmp eq ptr %i.og, null
  br i1 %.not.i17.i.i.i229, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228
  %i.ov = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = sub i64 %i.ow, %i.oi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ox) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230: ; preds = %bb.bq, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i228
  store ptr %i.or, ptr %2, align 8, !tbaa !41
  store ptr %i.ou, ptr %i.b, align 8, !tbaa !40
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.op
  store ptr %i.oy, ptr %i.kj, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231

_ZNSt6vectorIjSaIjEE9push_backEOj.exit231:        ; preds = %bb.bm, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i230
  %i.oz = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.pa = load ptr, ptr %i.kk, align 8, !tbaa !73
  %.not.i232 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not.i232, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231
  store i32 %.1367444, ptr %i.oz, align 4, !tbaa !42
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 4
  store ptr %i.pb, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239

bb.bs:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit231
  %i.pc = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.pd = ptrtoint ptr %i.oz to i64
  %i.pe = ptrtoint ptr %i.pc to i64               ; 2 uses
  %i.pf = sub i64 %i.pd, %i.pe                    ; 5 uses
  %i.pg = icmp eq i64 %i.pf, 9223372036854775804
  br i1 %i.pg, label %bb.bt, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233

bb.bt:                                            ; preds = %bb.bs
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233: ; preds = %bb.bs
  %i.ph = ashr exact i64 %i.pf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i234 = tail call i64 @llvm.umax.i64(i64 %i.ph, i64 1)
  %i.pi = add nsw i64 %.sroa.speculated.i.i.i234, %i.ph ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %i.ph
  %i.pk = tail call i64 @llvm.umin.i64(i64 %i.pi, i64 2305843009213693951)
  %i.pl = select i1 %i.pj, i64 2305843009213693951, i64 %i.pk ; 3 uses
  %.not.i.i.i235 = icmp ne i64 %i.pl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i235)
  %i.pm = shl nuw nsw i64 %i.pl, 2
  %i.pn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pm) #23 ; 4 uses
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %i.pf ; 2 uses
  store i32 %.1367444, ptr %i.po, align 4, !tbaa !42
  %i.pp = icmp sgt i64 %i.pf, 0
  br i1 %i.pp, label %bb.bu, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236

bb.bu:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pn, ptr align 4 %i.pc, i64 %i.pf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236: ; preds = %bb.bu, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i233
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  %.not.i17.i.i237 = icmp eq ptr %i.pc, null
  br i1 %.not.i17.i.i237, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236
  %i.pr = load ptr, ptr %i.kk, align 8, !tbaa !73
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.ps, %i.pe
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef %i.pt) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238: ; preds = %bb.bv, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i236
  store ptr %i.pn, ptr %i.d, align 8, !tbaa !41
  store ptr %i.pq, ptr %i.f, align 8, !tbaa !40
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pl
  store ptr %i.pu, ptr %i.kk, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239

_ZNSt6vectorIjSaIjEE9push_backERKj.exit239:       ; preds = %bb.br, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i238
  %i.pv = load ptr, ptr %i.nw, align 8, !tbaa !78 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !99
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv522
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !101 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !119
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 156
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !118
  %i.qd = icmp eq i32 %i.qc, 0
  %i.qe = sext i1 %i.qd to i32
  %spec.select155 = add nsw i32 %i.qa, %i.qe      ; 2 uses
  %i.qf = add nsw i32 %spec.select155, %.1141445  ; 2 uses
  %i.qg = add i32 %spec.select155, %.1367444      ; 2 uses
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %i.qh = load i32, ptr %i.pv, align 8, !tbaa !98
  %i.qi = sext i32 %i.qh to i64
  %i.qj = icmp slt i64 %indvars.iv.next523, %i.qi
  br i1 %i.qj, label %.lr.ph447, label %.loopexit383, !llvm.loop !209

bb.bw:                                            ; preds = %.lr.ph453
  %i.qk = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.ql = load ptr, ptr %i.kj, align 8, !tbaa !73
  %.not.i.i240 = icmp eq ptr %i.qk, %i.ql
  br i1 %.not.i.i240, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i32 %.0140451, ptr %i.qk, align 4, !tbaa !42
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  store ptr %i.qm, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247

bb.by:                                            ; preds = %bb.bw
  %i.qn = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.qo = ptrtoint ptr %i.qk to i64
  %i.qp = ptrtoint ptr %i.qn to i64               ; 2 uses
  %i.qq = sub i64 %i.qo, %i.qp                    ; 5 uses
  %i.qr = icmp eq i64 %i.qq, 9223372036854775804
  br i1 %i.qr, label %bb.bz, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241: ; preds = %bb.by
  %i.qs = ashr exact i64 %i.qq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i242 = tail call i64 @llvm.umax.i64(i64 %i.qs, i64 1)
  %i.qt = add nsw i64 %.sroa.speculated.i.i.i.i242, %i.qs ; 2 uses
  %i.qu = icmp ult i64 %i.qt, %i.qs
  %i.qv = tail call i64 @llvm.umin.i64(i64 %i.qt, i64 2305843009213693951)
  %i.qw = select i1 %i.qu, i64 2305843009213693951, i64 %i.qv ; 3 uses
  %.not.i.i.i.i243 = icmp ne i64 %i.qw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i243)
  %i.qx = shl nuw nsw i64 %i.qw, 2
  %i.qy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qx) #23 ; 4 uses
  %i.qz = getelementptr inbounds i8, ptr %i.qy, i64 %i.qq ; 2 uses
  store i32 %.0140451, ptr %i.qz, align 4, !tbaa !42
  %i.ra = icmp sgt i64 %i.qq, 0
  br i1 %i.ra, label %bb.ca, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244

bb.ca:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qy, ptr align 4 %i.qn, i64 %i.qq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244: ; preds = %bb.ca, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i241
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %.not.i17.i.i.i245 = icmp eq ptr %i.qn, null
  br i1 %.not.i17.i.i.i245, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244
  %i.rc = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = sub i64 %i.rd, %i.qp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.re) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246: ; preds = %bb.cb, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i244
  store ptr %i.qy, ptr %2, align 8, !tbaa !41
  store ptr %i.rb, ptr %i.b, align 8, !tbaa !40
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %i.qw
  store ptr %i.rf, ptr %i.kj, align 8, !tbaa !73
  %.pre549 = load ptr, ptr %i.nw, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247

_ZNSt6vectorIjSaIjEE9push_backEOj.exit247:        ; preds = %bb.bx, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246
  %i.rg = phi ptr [ %i.nx, %bb.bx ], [ %.pre549, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i246 ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !49
  %i.rj = getelementptr inbounds i8, ptr %i.ri, i64 -4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !42 ; 2 uses
  %i.rl = add i32 %.0140451, -1
  %i.rm = add i32 %i.rl, %i.rk
  %i.rn = load i32, ptr %i.rg, align 8, !tbaa !98
  %i.ro = icmp sgt i32 %i.rn, 0
  %i.rp = add i32 %.0366450, -1                   ; 2 uses
  br i1 %i.ro, label %.lr.ph441, label %._crit_edge442

.lr.ph441:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247
  %.pre550 = load ptr, ptr %i.f, align 8, !tbaa !40
  %.pre551 = load ptr, ptr %i.kk, align 8, !tbaa !73
  br label %bb.cc

._crit_edge442.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %.pre553 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.phi.trans.insert554 = getelementptr inbounds i8, ptr %.pre553, i64 -4
  %.pre555 = load i32, ptr %.phi.trans.insert554, align 4, !tbaa !42
  br label %._crit_edge442

._crit_edge442:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247, %._crit_edge442.loopexit
  %i.rq = phi i32 [ %.pre555, %._crit_edge442.loopexit ], [ %i.rk, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit247 ]
  %i.rr = add i32 %i.rp, %i.rq
  br label %.loopexit383

bb.cc:                                            ; preds = %.lr.ph441, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255
  %i.rs = phi ptr [ %i.rg, %.lr.ph441 ], [ %i.su, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 2 uses
  %i.rt = phi ptr [ %.pre551, %.lr.ph441 ], [ %i.sv, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 3 uses
  %i.ru = phi ptr [ %.pre550, %.lr.ph441 ], [ %i.sw, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 3 uses
  %indvars.iv519 = phi i64 [ 0, %.lr.ph441 ], [ %indvars.iv.next520, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255 ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !41
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv519
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !42
  %i.rz = add i32 %i.rp, %i.ry                    ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.ru, %i.rt
  br i1 %.not.i.i248, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i32 %i.rz, ptr %i.ru, align 4, !tbaa !42
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 4 ; 2 uses
  store ptr %i.sa, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255

bb.ce:                                            ; preds = %bb.cc
  %i.sb = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.sc = ptrtoint ptr %i.rt to i64
  %i.sd = ptrtoint ptr %i.sb to i64               ; 2 uses
  %i.se = sub i64 %i.sc, %i.sd                    ; 5 uses
  %i.sf = icmp eq i64 %i.se, 9223372036854775804
  br i1 %i.sf, label %bb.cf, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249

bb.cf:                                            ; preds = %bb.ce
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249: ; preds = %bb.ce
  %i.sg = ashr exact i64 %i.se, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i250 = tail call i64 @llvm.umax.i64(i64 %i.sg, i64 1)
  %i.sh = add nsw i64 %.sroa.speculated.i.i.i.i250, %i.sg ; 2 uses
  %i.si = icmp ult i64 %i.sh, %i.sg
  %i.sj = tail call i64 @llvm.umin.i64(i64 %i.sh, i64 2305843009213693951)
  %i.sk = select i1 %i.si, i64 2305843009213693951, i64 %i.sj ; 3 uses
  %.not.i.i.i.i251 = icmp ne i64 %i.sk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i251)
  %i.sl = shl nuw nsw i64 %i.sk, 2
  %i.sm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sl) #23 ; 4 uses
  %i.sn = getelementptr inbounds i8, ptr %i.sm, i64 %i.se ; 2 uses
  store i32 %i.rz, ptr %i.sn, align 4, !tbaa !42
  %i.so = icmp sgt i64 %i.se, 0
  br i1 %i.so, label %bb.cg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252

bb.cg:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sm, ptr align 4 %i.sb, i64 %i.se, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252: ; preds = %bb.cg, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i249
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 4 ; 2 uses
  %.not.i17.i.i.i253 = icmp eq ptr %i.sb, null
  br i1 %.not.i17.i.i.i253, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252
  %i.sq = load ptr, ptr %i.kk, align 8, !tbaa !73
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = sub i64 %i.sr, %i.sd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef %i.ss) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254: ; preds = %bb.ch, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i252
  store ptr %i.sm, ptr %i.d, align 8, !tbaa !41
  store ptr %i.sp, ptr %i.f, align 8, !tbaa !40
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.sk ; 2 uses
  store ptr %i.st, ptr %i.kk, align 8, !tbaa !73
  %.pre552 = load ptr, ptr %i.nw, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit255

_ZNSt6vectorIjSaIjEE9push_backEOj.exit255:        ; preds = %bb.cd, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254
  %i.su = phi ptr [ %i.rs, %bb.cd ], [ %.pre552, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254 ] ; 3 uses
  %i.sv = phi ptr [ %i.rt, %bb.cd ], [ %i.st, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254 ]
  %i.sw = phi ptr [ %i.sa, %bb.cd ], [ %i.sp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i254 ]
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %i.sx = load i32, ptr %i.su, align 8, !tbaa !98
  %i.sy = sext i32 %i.sx to i64
  %i.sz = icmp slt i64 %indvars.iv.next520, %i.sy
  br i1 %i.sz, label %bb.cc, label %._crit_edge442.loopexit, !llvm.loop !210

.loopexit383:                                     ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239, %.preheader382, %._crit_edge442
  %.2368 = phi i32 [ %i.rr, %._crit_edge442 ], [ %.0366450, %.preheader382 ], [ %i.qg, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ] ; 3 uses
  %.2142 = phi i32 [ %i.rm, %._crit_edge442 ], [ %.0140451, %.preheader382 ], [ %i.qf, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit239 ] ; 3 uses
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %i.ta = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.tb = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.tc, %i.td
  %i.tf = shl i64 %i.te, 29
  %i.tg = ashr i64 %i.tf, 32
  %i.th = icmp slt i64 %indvars.iv.next526, %i.tg
  br i1 %i.th, label %.lr.ph453, label %._crit_edge454, !llvm.loop !211

._crit_edge472:                                   ; preds = %.loopexit, %.preheader385
  %.0362.lcssa = phi i32 [ 0, %.preheader385 ], [ %.3365, %.loopexit ] ; 2 uses
  %.0135.lcssa = phi i32 [ 0, %.preheader385 ], [ %.3, %.loopexit ] ; 2 uses
  %i.ti = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !73
  %.not.i.i256 = icmp eq ptr %i.ti, %i.tk
  br i1 %.not.i.i256, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge472
  store i32 %.0135.lcssa, ptr %i.ti, align 4, !tbaa !42
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  store ptr %i.tl, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263

bb.cj:                                            ; preds = %._crit_edge472
  %i.tm = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.tn = ptrtoint ptr %i.ti to i64
  %i.to = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.tp = sub i64 %i.tn, %i.to                    ; 5 uses
  %i.tq = icmp eq i64 %i.tp, 9223372036854775804
  br i1 %i.tq, label %bb.ck, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257

bb.ck:                                            ; preds = %bb.cj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257: ; preds = %bb.cj
  %i.tr = ashr exact i64 %i.tp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i258 = tail call i64 @llvm.umax.i64(i64 %i.tr, i64 1)
  %i.ts = add nsw i64 %.sroa.speculated.i.i.i.i258, %i.tr ; 2 uses
  %i.tt = icmp ult i64 %i.ts, %i.tr
  %i.tu = tail call i64 @llvm.umin.i64(i64 %i.ts, i64 2305843009213693951)
  %i.tv = select i1 %i.tt, i64 2305843009213693951, i64 %i.tu ; 3 uses
  %.not.i.i.i.i259 = icmp ne i64 %i.tv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i259)
  %i.tw = shl nuw nsw i64 %i.tv, 2
  %i.tx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tw) #23 ; 4 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 %i.tp ; 2 uses
  store i32 %.0135.lcssa, ptr %i.ty, align 4, !tbaa !42
  %i.tz = icmp sgt i64 %i.tp, 0
  br i1 %i.tz, label %bb.cl, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260

bb.cl:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.tx, ptr align 4 %i.tm, i64 %i.tp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260: ; preds = %bb.cl, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i257
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %.not.i17.i.i.i261 = icmp eq ptr %i.tm, null
  br i1 %.not.i17.i.i.i261, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260
  %i.ub = load ptr, ptr %i.tj, align 8, !tbaa !73
  %i.uc = ptrtoint ptr %i.ub to i64
  %i.ud = sub i64 %i.uc, %i.to
  tail call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.ud) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262: ; preds = %bb.cm, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i260
  store ptr %i.tx, ptr %2, align 8, !tbaa !41
  store ptr %i.ua, ptr %i.b, align 8, !tbaa !40
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.tv
  store ptr %i.ue, ptr %i.tj, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263

_ZNSt6vectorIjSaIjEE9push_backEOj.exit263:        ; preds = %bb.ci, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i262
  %i.uf = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !73
  %.not.i264 = icmp eq ptr %i.uf, %i.uh
  br i1 %.not.i264, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263
  store i32 %.0362.lcssa, ptr %i.uf, align 4, !tbaa !42
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uf, i64 4 ; 2 uses
  store ptr %i.ui, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

bb.co:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit263
  %i.uj = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.uk = ptrtoint ptr %i.uf to i64
  %i.ul = ptrtoint ptr %i.uj to i64               ; 2 uses
  %i.um = sub i64 %i.uk, %i.ul                    ; 5 uses
  %i.un = icmp eq i64 %i.um, 9223372036854775804
  br i1 %i.un, label %bb.cp, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265

bb.cp:                                            ; preds = %bb.co
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265: ; preds = %bb.co
  %i.uo = ashr exact i64 %i.um, 2                 ; 3 uses
  %.sroa.speculated.i.i.i266 = tail call i64 @llvm.umax.i64(i64 %i.uo, i64 1)
  %i.up = add nsw i64 %.sroa.speculated.i.i.i266, %i.uo ; 2 uses
  %i.uq = icmp ult i64 %i.up, %i.uo
  %i.ur = tail call i64 @llvm.umin.i64(i64 %i.up, i64 2305843009213693951)
  %i.us = select i1 %i.uq, i64 2305843009213693951, i64 %i.ur ; 3 uses
  %.not.i.i.i267 = icmp ne i64 %i.us, 0
  tail call void @llvm.assume(i1 %.not.i.i.i267)
  %i.ut = shl nuw nsw i64 %i.us, 2
  %i.uu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ut) #23 ; 4 uses
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 %i.um ; 2 uses
  store i32 %.0362.lcssa, ptr %i.uv, align 4, !tbaa !42
  %i.uw = icmp sgt i64 %i.um, 0
  br i1 %i.uw, label %bb.cq, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268

bb.cq:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uu, ptr align 4 %i.uj, i64 %i.um, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268: ; preds = %bb.cq, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i265
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 4 ; 2 uses
  %.not.i17.i.i269 = icmp eq ptr %i.uj, null
  br i1 %.not.i17.i.i269, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268
  %i.uy = load ptr, ptr %i.ug, align 8, !tbaa !73
  %i.uz = ptrtoint ptr %i.uy to i64
  %i.va = sub i64 %i.uz, %i.ul
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.va) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270: ; preds = %bb.cr, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i268
  store ptr %i.uu, ptr %i.d, align 8, !tbaa !41
  store ptr %i.ux, ptr %i.f, align 8, !tbaa !40
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.us
  store ptr %i.vb, ptr %i.ug, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223

.lr.ph471:                                        ; preds = %._crit_edge437, %.loopexit
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %.loopexit ], [ 0, %._crit_edge437 ] ; 3 uses
  %i.vc = phi ptr [ %i.aap, %.loopexit ], [ %i.k, %._crit_edge437 ]
  %.0135468 = phi i32 [ %.3, %.loopexit ], [ 0, %._crit_edge437 ] ; 5 uses
  %.0362467 = phi i32 [ %.3365, %.loopexit ], [ 0, %._crit_edge437 ] ; 4 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv534 ; 4 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !78 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 88
  %i.vg = load i8, ptr %i.vf, align 8, !tbaa !97, !range !32, !noundef !33
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %.preheader380, label %bb.dh

.preheader380:                                    ; preds = %.lr.ph471
  %i.vi = load i32, ptr %i.ve, align 8, !tbaa !98
  %i.vj = icmp sgt i32 %i.vi, 0
  br i1 %i.vj, label %.lr.ph464, label %.loopexit

.lr.ph464:                                        ; preds = %.preheader380, %bb.dg
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %bb.dg ], [ 0, %.preheader380 ] ; 3 uses
  %i.vk = phi ptr [ %i.xw, %bb.dg ], [ %i.ve, %.preheader380 ]
  %.1462 = phi i32 [ %i.xp, %bb.dg ], [ %.0135468, %.preheader380 ] ; 3 uses
  %.1363461 = phi i32 [ %i.xq, %bb.dg ], [ %.0362467, %.preheader380 ] ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !99
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %indvars.iv531 ; 2 uses
  %i.vo = or i64 %indvars.iv531, %indvars.iv534
  %or.cond3 = icmp eq i64 %i.vo, 0
  br i1 %or.cond3, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %.lr.ph464
  %i.vp = load ptr, ptr %i.vn, align 8, !tbaa !101
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 156
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !118
  %.not = icmp eq i32 %i.vr, 0
  br i1 %.not, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vs = add nsw i32 %.1462, 1
  %i.vt = add i32 %.1363461, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.lr.ph464
  %.2364 = phi i32 [ %.1363461, %bb.cs ], [ %i.vt, %bb.ct ], [ %.1363461, %.lr.ph464 ] ; 3 uses
  %.2 = phi i32 [ %.1462, %bb.cs ], [ %i.vs, %bb.ct ], [ %.1462, %.lr.ph464 ] ; 3 uses
  %i.vu = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.vv = load ptr, ptr %i.kj, align 8, !tbaa !73
  %.not.i.i272 = icmp eq ptr %i.vu, %i.vv
  br i1 %.not.i.i272, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 %.2, ptr %i.vu, align 4, !tbaa !42
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 4
  store ptr %i.vw, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279

bb.cw:                                            ; preds = %bb.cu
  %i.vx = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.vy = ptrtoint ptr %i.vu to i64
  %i.vz = ptrtoint ptr %i.vx to i64               ; 2 uses
  %i.wa = sub i64 %i.vy, %i.vz                    ; 5 uses
  %i.wb = icmp eq i64 %i.wa, 9223372036854775804
  br i1 %i.wb, label %bb.cx, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273

bb.cx:                                            ; preds = %bb.cw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273: ; preds = %bb.cw
  %i.wc = ashr exact i64 %i.wa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i274 = tail call i64 @llvm.umax.i64(i64 %i.wc, i64 1)
  %i.wd = add nsw i64 %.sroa.speculated.i.i.i.i274, %i.wc ; 2 uses
  %i.we = icmp ult i64 %i.wd, %i.wc
  %i.wf = tail call i64 @llvm.umin.i64(i64 %i.wd, i64 2305843009213693951)
  %i.wg = select i1 %i.we, i64 2305843009213693951, i64 %i.wf ; 3 uses
  %.not.i.i.i.i275 = icmp ne i64 %i.wg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i275)
  %i.wh = shl nuw nsw i64 %i.wg, 2
  %i.wi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wh) #23 ; 4 uses
  %i.wj = getelementptr inbounds i8, ptr %i.wi, i64 %i.wa ; 2 uses
  store i32 %.2, ptr %i.wj, align 4, !tbaa !42
  %i.wk = icmp sgt i64 %i.wa, 0
  br i1 %i.wk, label %bb.cy, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276

bb.cy:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wi, ptr align 4 %i.vx, i64 %i.wa, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276: ; preds = %bb.cy, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i273
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  %.not.i17.i.i.i277 = icmp eq ptr %i.vx, null
  br i1 %.not.i17.i.i.i277, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276
  %i.wm = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.wn = ptrtoint ptr %i.wm to i64
  %i.wo = sub i64 %i.wn, %i.vz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vx, i64 noundef %i.wo) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278: ; preds = %bb.cz, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i276
  store ptr %i.wi, ptr %2, align 8, !tbaa !41
  store ptr %i.wl, ptr %i.b, align 8, !tbaa !40
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %i.wg
  store ptr %i.wp, ptr %i.kj, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279

_ZNSt6vectorIjSaIjEE9push_backEOj.exit279:        ; preds = %bb.cv, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i278
  %i.wq = load ptr, ptr %i.f, align 8, !tbaa !40  ; 5 uses
  %i.wr = load ptr, ptr %i.kk, align 8, !tbaa !73
  %.not.i280 = icmp eq ptr %i.wq, %i.wr
  br i1 %.not.i280, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279
  store i32 %.2364, ptr %i.wq, align 4, !tbaa !42
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  store ptr %i.ws, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287

bb.db:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit279
  %i.wt = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.wu = ptrtoint ptr %i.wq to i64
  %i.wv = ptrtoint ptr %i.wt to i64               ; 2 uses
  %i.ww = sub i64 %i.wu, %i.wv                    ; 5 uses
  %i.wx = icmp eq i64 %i.ww, 9223372036854775804
  br i1 %i.wx, label %bb.dc, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281

bb.dc:                                            ; preds = %bb.db
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281: ; preds = %bb.db
  %i.wy = ashr exact i64 %i.ww, 2                 ; 3 uses
  %.sroa.speculated.i.i.i282 = tail call i64 @llvm.umax.i64(i64 %i.wy, i64 1)
  %i.wz = add nsw i64 %.sroa.speculated.i.i.i282, %i.wy ; 2 uses
  %i.xa = icmp ult i64 %i.wz, %i.wy
  %i.xb = tail call i64 @llvm.umin.i64(i64 %i.wz, i64 2305843009213693951)
  %i.xc = select i1 %i.xa, i64 2305843009213693951, i64 %i.xb ; 3 uses
  %.not.i.i.i283 = icmp ne i64 %i.xc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i283)
  %i.xd = shl nuw nsw i64 %i.xc, 2
  %i.xe = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xd) #23 ; 4 uses
  %i.xf = getelementptr inbounds i8, ptr %i.xe, i64 %i.ww ; 3 uses
  store i32 %.2364, ptr %i.xf, align 4, !tbaa !42
  %i.xg = icmp sgt i64 %i.ww, 0
  br i1 %i.xg, label %bb.dd, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284

bb.dd:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xe, ptr align 4 %i.wt, i64 %i.ww, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284: ; preds = %bb.dd, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i281
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %.not.i17.i.i285 = icmp eq ptr %i.wt, null
  br i1 %.not.i17.i.i285, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284
  %i.xi = load ptr, ptr %i.kk, align 8, !tbaa !73
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = sub i64 %i.xj, %i.wv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.xk) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286: ; preds = %bb.de, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i284
  store ptr %i.xe, ptr %i.d, align 8, !tbaa !41
  store ptr %i.xh, ptr %i.f, align 8, !tbaa !40
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.xc
  store ptr %i.xl, ptr %i.kk, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287

_ZNSt6vectorIjSaIjEE9push_backERKj.exit287:       ; preds = %bb.da, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286
  %i.xm = phi ptr [ %i.wq, %bb.da ], [ %i.xf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i286 ] ; 2 uses
  %i.xn = load ptr, ptr %i.vn, align 8, !tbaa !101 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !119 ; 2 uses
  %i.xp = add nsw i32 %i.xo, %.2                  ; 2 uses
  %i.xq = add i32 %i.xo, %.2364                   ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 156
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !118
  %i.xt = icmp eq i32 %i.xs, 0
  br i1 %i.xt, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287
  %i.xu = load i32, ptr %i.xm, align 4, !tbaa !42
  %i.xv = add i32 %i.xu, 1
  store i32 %i.xv, ptr %i.xm, align 4, !tbaa !42
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit287
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.xw = load ptr, ptr %i.vd, align 8, !tbaa !78 ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !98
  %i.xy = sext i32 %i.xx to i64
  %i.xz = icmp slt i64 %indvars.iv.next532, %i.xy
  br i1 %i.xz, label %.lr.ph464, label %.loopexit, !llvm.loop !212

bb.dh:                                            ; preds = %.lr.ph471
  %i.ya = load ptr, ptr %i.b, align 8, !tbaa !40  ; 4 uses
  %i.yb = load ptr, ptr %i.kj, align 8, !tbaa !73
  %.not.i.i288 = icmp eq ptr %i.ya, %i.yb
  br i1 %.not.i.i288, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 %.0135468, ptr %i.ya, align 4, !tbaa !42
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  store ptr %i.yc, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295

bb.dj:                                            ; preds = %bb.dh
  %i.yd = load ptr, ptr %2, align 8, !tbaa !41    ; 4 uses
  %i.ye = ptrtoint ptr %i.ya to i64
  %i.yf = ptrtoint ptr %i.yd to i64               ; 2 uses
  %i.yg = sub i64 %i.ye, %i.yf                    ; 5 uses
  %i.yh = icmp eq i64 %i.yg, 9223372036854775804
  br i1 %i.yh, label %bb.dk, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289

bb.dk:                                            ; preds = %bb.dj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289: ; preds = %bb.dj
  %i.yi = ashr exact i64 %i.yg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i290 = tail call i64 @llvm.umax.i64(i64 %i.yi, i64 1)
  %i.yj = add nsw i64 %.sroa.speculated.i.i.i.i290, %i.yi ; 2 uses
  %i.yk = icmp ult i64 %i.yj, %i.yi
  %i.yl = tail call i64 @llvm.umin.i64(i64 %i.yj, i64 2305843009213693951)
  %i.ym = select i1 %i.yk, i64 2305843009213693951, i64 %i.yl ; 3 uses
  %.not.i.i.i.i291 = icmp ne i64 %i.ym, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i291)
  %i.yn = shl nuw nsw i64 %i.ym, 2
  %i.yo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #23 ; 4 uses
  %i.yp = getelementptr inbounds i8, ptr %i.yo, i64 %i.yg ; 2 uses
  store i32 %.0135468, ptr %i.yp, align 4, !tbaa !42
  %i.yq = icmp sgt i64 %i.yg, 0
  br i1 %i.yq, label %bb.dl, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292

bb.dl:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yo, ptr align 4 %i.yd, i64 %i.yg, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292: ; preds = %bb.dl, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i289
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  %.not.i17.i.i.i293 = icmp eq ptr %i.yd, null
  br i1 %.not.i17.i.i.i293, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292
  %i.ys = load ptr, ptr %i.kj, align 8, !tbaa !73
  %i.yt = ptrtoint ptr %i.ys to i64
  %i.yu = sub i64 %i.yt, %i.yf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yu) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294: ; preds = %bb.dm, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i292
  store ptr %i.yo, ptr %2, align 8, !tbaa !41
  store ptr %i.yr, ptr %i.b, align 8, !tbaa !40
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.ym
  store ptr %i.yv, ptr %i.kj, align 8, !tbaa !73
  %.pre556 = load ptr, ptr %i.vd, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295

_ZNSt6vectorIjSaIjEE9push_backEOj.exit295:        ; preds = %bb.di, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294
  %i.yw = phi ptr [ %i.ve, %bb.di ], [ %.pre556, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i294 ] ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 40
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !49
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !42 ; 2 uses
  %i.zb = add i32 %i.za, %.0135468
  %i.zc = load i32, ptr %i.yw, align 8, !tbaa !98
  %i.zd = icmp sgt i32 %i.zc, 0
  br i1 %i.zd, label %.lr.ph458.preheader, label %._crit_edge459

.lr.ph458.preheader:                              ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295
  %.pre557 = load ptr, ptr %i.f, align 8, !tbaa !40
  %.pre558 = load ptr, ptr %i.kk, align 8, !tbaa !73
  br label %.lr.ph458

._crit_edge459.loopexit:                          ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303
  %.phi.trans.insert560 = getelementptr inbounds nuw i8, ptr %i.aai, i64 40
  %.pre561 = load ptr, ptr %.phi.trans.insert560, align 8, !tbaa !49
  %.phi.trans.insert562 = getelementptr inbounds i8, ptr %.pre561, i64 -4
  %.pre563 = load i32, ptr %.phi.trans.insert562, align 4, !tbaa !42
  br label %._crit_edge459

._crit_edge459:                                   ; preds = %._crit_edge459.loopexit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295
  %i.ze = phi i32 [ %i.za, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit295 ], [ %.pre563, %._crit_edge459.loopexit ]
  %i.zf = add i32 %i.ze, %.0362467
  br label %.loopexit

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303
  %i.zg = phi ptr [ %i.yw, %.lr.ph458.preheader ], [ %i.aai, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 2 uses
  %i.zh = phi ptr [ %.pre558, %.lr.ph458.preheader ], [ %i.aaj, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 3 uses
  %i.zi = phi ptr [ %.pre557, %.lr.ph458.preheader ], [ %i.aak, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 3 uses
  %indvars.iv528 = phi i64 [ 0, %.lr.ph458.preheader ], [ %indvars.iv.next529, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303 ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !41
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv528
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !42
  %i.zn = add i32 %i.zm, %.0362467                ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.zi, %i.zh
  br i1 %.not.i.i296, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph458
  store i32 %i.zn, ptr %i.zi, align 4, !tbaa !42
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zi, i64 4 ; 2 uses
  store ptr %i.zo, ptr %i.f, align 8, !tbaa !40
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303

bb.do:                                            ; preds = %.lr.ph458
  %i.zp = load ptr, ptr %i.d, align 8, !tbaa !41  ; 4 uses
  %i.zq = ptrtoint ptr %i.zh to i64
  %i.zr = ptrtoint ptr %i.zp to i64               ; 2 uses
  %i.zs = sub i64 %i.zq, %i.zr                    ; 5 uses
  %i.zt = icmp eq i64 %i.zs, 9223372036854775804
  br i1 %i.zt, label %bb.dp, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297

bb.dp:                                            ; preds = %bb.do
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297: ; preds = %bb.do
  %i.zu = ashr exact i64 %i.zs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i298 = tail call i64 @llvm.umax.i64(i64 %i.zu, i64 1)
  %i.zv = add nsw i64 %.sroa.speculated.i.i.i.i298, %i.zu ; 2 uses
  %i.zw = icmp ult i64 %i.zv, %i.zu
  %i.zx = tail call i64 @llvm.umin.i64(i64 %i.zv, i64 2305843009213693951)
  %i.zy = select i1 %i.zw, i64 2305843009213693951, i64 %i.zx ; 3 uses
  %.not.i.i.i.i299 = icmp ne i64 %i.zy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i299)
  %i.zz = shl nuw nsw i64 %i.zy, 2
  %i.aaa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zz) #23 ; 4 uses
  %i.aab = getelementptr inbounds i8, ptr %i.aaa, i64 %i.zs ; 2 uses
  store i32 %i.zn, ptr %i.aab, align 4, !tbaa !42
  %i.aac = icmp sgt i64 %i.zs, 0
  br i1 %i.aac, label %bb.dq, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300

bb.dq:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aaa, ptr align 4 %i.zp, i64 %i.zs, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300: ; preds = %bb.dq, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i297
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 4 ; 2 uses
  %.not.i17.i.i.i301 = icmp eq ptr %i.zp, null
  br i1 %.not.i17.i.i.i301, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300
  %i.aae = load ptr, ptr %i.kk, align 8, !tbaa !73
  %i.aaf = ptrtoint ptr %i.aae to i64
  %i.aag = sub i64 %i.aaf, %i.zr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef %i.aag) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302: ; preds = %bb.dr, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i300
  store ptr %i.aaa, ptr %i.d, align 8, !tbaa !41
  store ptr %i.aad, ptr %i.f, align 8, !tbaa !40
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.zy ; 2 uses
  store ptr %i.aah, ptr %i.kk, align 8, !tbaa !73
  %.pre559 = load ptr, ptr %i.vd, align 8, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit303

_ZNSt6vectorIjSaIjEE9push_backEOj.exit303:        ; preds = %bb.dn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302
  %i.aai = phi ptr [ %i.zg, %bb.dn ], [ %.pre559, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302 ] ; 3 uses
  %i.aaj = phi ptr [ %i.zh, %bb.dn ], [ %i.aah, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302 ]
  %i.aak = phi ptr [ %i.zo, %bb.dn ], [ %i.aad, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i302 ]
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %i.aal = load i32, ptr %i.aai, align 8, !tbaa !98
  %i.aam = sext i32 %i.aal to i64
  %i.aan = icmp slt i64 %indvars.iv.next529, %i.aam
  br i1 %i.aan, label %.lr.ph458, label %._crit_edge459.loopexit, !llvm.loop !213

.loopexit:                                        ; preds = %bb.dg, %.preheader380, %._crit_edge459
  %.3365 = phi i32 [ %i.zf, %._crit_edge459 ], [ %.0362467, %.preheader380 ], [ %i.xq, %bb.dg ] ; 2 uses
  %.3 = phi i32 [ %i.zb, %._crit_edge459 ], [ %.0135468, %.preheader380 ], [ %i.xp, %bb.dg ] ; 2 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.aao = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.aap = load ptr, ptr %1, align 8, !tbaa !76   ; 2 uses
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = shl i64 %i.aas, 29
  %i.aau = ashr i64 %i.aat, 32
  %i.aav = icmp slt i64 %indvars.iv.next535, %i.aau
  br i1 %i.aav, label %.lr.ph471, label %._crit_edge472, !llvm.loop !214

_ZNSt6vectorIjSaIjEE9push_backERKj.exit223:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270, %bb.cn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222, %bb.bh
  %i.aaw = phi ptr [ %i.ux, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i270 ], [ %i.ui, %bb.cn ], [ %i.nq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i222 ], [ %i.nb, %bb.bh ]
  %i.aax = getelementptr inbounds i8, ptr %i.aaw, i64 -4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.b, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223
  %.sink.in = phi ptr [ %i.aax, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit223 ], [ %i.t, %bb.b ], [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !42
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sink, ptr %i.aay, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8LightGBM19TrainingShareStates14SetMultiValBinEPNS_11MultiValBinEiRKSt6vectorISt10unique_ptrINS_12FeatureGroupESt14default_deleteIS5_EESaIS8_EEbbi(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 4)) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.2", align 8     ; 13 uses
  %i.a = tail call i32 @OMP_NUM_THREADS()
  store i32 %i.a, ptr %0, align 8, !tbaa !219
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.b
  %i.n = phi ptr [ null, %bb.b ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !72
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 14 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.w = phi ptr [ %i.e, %.lr.ph ], [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !97, !range !32, !noundef !33
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  br i1 %4, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.v, %i.s
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ac, ptr %i.v, align 4, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.s to i64
  %i.af = ptrtoint ptr %i.t to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.m, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #23
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !42
  %i.ar = icmp sgt i64 %i.ag, 0
  br i1 %i.ar, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.t, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ao, ptr %7, align 8, !tbaa !67
  store ptr %i.as, ptr %i.l, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am ; 3 uses
  store ptr %i.at, ptr %i.m, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %bb.c
  br i1 %5, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i17 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.au, ptr %i.v, align 4, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.av, ptr %i.l, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = ptrtoint ptr %i.u to i64
  %i.ax = ptrtoint ptr %i.t to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775804
  br i1 %i.az, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.m
  %i.ba = ashr exact i64 %i.ay, 2                 ; 3 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i19, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 2305843009213693951)
  %i.be = select i1 %i.bc, i64 2305843009213693951, i64 %i.bd ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i20)
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #23
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !42
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21

bb.n:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr align 4 %i.t, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21: ; preds = %bb.n, %.noexc25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not.i17.i.i22 = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i22, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ay) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i21
  store ptr %i.bg, ptr %7, align 8, !tbaa !67
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be ; 3 uses
  store ptr %i.bl, ptr %i.m, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23, %bb.l, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f, %bb.j, %bb.d
  %i.bm = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.s, %bb.l ], [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.s, %bb.f ], [ %i.s, %bb.j ], [ %i.s, %bb.d ]
  %i.bn = phi ptr [ %i.bg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.t, %bb.l ], [ %i.ao, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.t, %bb.f ], [ %i.t, %bb.j ], [ %i.t, %bb.d ] ; 2 uses
  %i.bo = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.u, %bb.l ], [ %i.at, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.s, %bb.f ], [ %i.u, %bb.j ], [ %i.u, %bb.d ]
  %i.bp = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i23 ], [ %i.av, %bb.l ], [ %i.as, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ad, %bb.f ], [ %i.v, %bb.j ], [ %i.v, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.br = load ptr, ptr %3, align 8, !tbaa !76    ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = shl i64 %i.bu, 29
  %i.bw = ashr i64 %i.bv, 32
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.c, label %._crit_edge, !llvm.loop !218

bb.p:                                             ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !220
  %i.ca = add nsw i32 %i.bz, %i.r
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !220
  %i.cb = load ptr, ptr %1, align 8, !tbaa !72
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef double %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !221
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !221
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #23
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN8LightGBM18MultiValBinWrapperC1EPNS_11MultiValBinEiRKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(192) %i.cj, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %6)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !222 ; 2 uses
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !222
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNKSt14default_deleteIN8LightGBM18MultiValBinWrapperEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull %i.ck)
  br label %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.s, %bb.t
  %i.cl = load ptr, ptr %7, align 8, !tbaa !67    ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !68
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i18, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.q, %bb.p, %._crit_edge
  %i.cr = phi ptr [ %i.t, %.invoke ], [ %i.n, %._crit_edge ], [ %i.n, %bb.q ], [ %i.n, %bb.p ]
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 192) #22
  %.pre = load ptr, ptr %7, align 8, !tbaa !67
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.w
  %i.ct = phi ptr [ %.pre, %bb.w ], [ %i.t, %.loopexit.split-lp.loopexit ], [ %i.cr, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.w ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp36, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i28 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit29, label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !68
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit29

_ZNSt6vectorIiSaIiEED2Ev.exit29:                  ; preds = %.loopexit.split-lp, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN8LightGBM18MultiValBinWrapperEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit3.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit3.i

_ZNSt6vectorIjSaIjEED2Ev.exit3.i:                 ; preds = %bb.e, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit5.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit5.i

_ZNSt6vectorIjSaIjEED2Ev.exit5.i:                 ; preds = %bb.f, %_ZNSt6vectorIjSaIjEED2Ev.exit3.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit5.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #3, !inline_history !223
  br label %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i.i, %_ZNSt6vectorIjSaIjEED2Ev.exit5.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.aj, null
  br i1 %.not.i6.i, label %_ZN8LightGBM18MultiValBinWrapperD2Ev.exit, label %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i7.i: ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #3, !inline_history !223
  br label %_ZN8LightGBM18MultiValBinWrapperD2Ev.exit

_ZN8LightGBM18MultiValBinWrapperD2Ev.exit:        ; preds = %_ZNSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIN8LightGBM11MultiValBinEEclEPS1_.exit.i7.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 192) #22
  br label %bb.g

bb.g:                                             ; preds = %_ZN8LightGBM18MultiValBinWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #17 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null, null, null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN8LightGBM11MultiValBinE", !11, i64 0}
!13 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM11MultiValBinELb0EE", !12, i64 0}
!14 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM11MultiValBinESt14default_deleteIS1_EEE", !13, i64 0}
!15 = !{!"_ZTSSt5tupleIJPN8LightGBM11MultiValBinESt14default_deleteIS1_EEE", !14, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM11MultiValBinESt14default_deleteIS1_EE", !15, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM11MultiValBinESt14default_deleteIS1_ELb1ELb1EE", !16, i64 0}
!18 = !{!"_ZTSSt10unique_ptrIN8LightGBM11MultiValBinESt14default_deleteIS1_EE", !17, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIjSaIjEE", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIiSaIiEE", !26, i64 0}
!28 = !{!"p1 double", !11, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"_ZTSN8LightGBM18MultiValBinWrapperE", !10, i64 0, !10, i64 1, !10, i64 2, !18, i64 8, !18, i64 16, !23, i64 24, !23, i64 48, !23, i64 72, !27, i64 96, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !28, i64 152, !29, i64 160, !29, i64 168, !29, i64 176, !29, i64 184}
!31 = !{!30, !10, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"_ZTSNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!35 = !{!34, !28, i64 0}
!36 = !{!34, !28, i64 8}
!37 = !{!30, !7, i64 128}
!38 = !{!28, !28, i64 0}
!39 = !{!30, !7, i64 120}
!40 = !{!20, !19, i64 8}
!41 = !{!20, !19, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!30, !28, i64 152}
!44 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!45 = !{!"double", !6, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{i64 2, i64 -1, i64 -1, i1 true}
!48 = !{!47}
!49 = !{!19, !19, i64 0}
!50 = !{!30, !7, i64 124}
!51 = !{!"p1 omnipotent char", !11, i64 0}
!52 = !{!29, !29, i64 0}
!53 = !{!6, !6, i64 0}
!54 = !{!"p1 long", !11, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !11, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!30, !7, i64 132}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!30, !29, i64 176}
!63 = !{!"llvm.loop.unswitch.partial.disable"}
!64 = !{!30, !10, i64 1}
!65 = !{!30, !10, i64 2}
!66 = !{!24, !19, i64 8}
!67 = !{!24, !19, i64 0}
!68 = !{!24, !19, i64 16}
!69 = !{!30, !7, i64 144}
!70 = !{!12, !12, i64 0}
!71 = !{!"vtable pointer", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!20, !19, i64 16}
!74 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EE", !11, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!"p1 _ZTSN8LightGBM12FeatureGroupE", !11, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS1_EE", !11, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM9BinMapperESt14default_deleteIS2_EESaIS5_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN8LightGBM3BinE", !11, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM3BinELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM3BinESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN8LightGBM3BinESt14default_deleteIS1_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM3BinESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM3BinESt14default_deleteIS1_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE", !89, i64 0}
!91 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM3BinESt14default_deleteIS1_EE", !11, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM3BinESt14default_deleteIS2_EESaIS5_EE", !94, i64 0}
!96 = !{!"_ZTSN8LightGBM12FeatureGroupE", !7, i64 0, !83, i64 8, !23, i64 32, !90, i64 56, !95, i64 64, !10, i64 88, !10, i64 89, !10, i64 90, !7, i64 92}
!97 = !{!96, !10, i64 88}
!98 = !{!96, !7, i64 0}
!99 = !{!80, !79, i64 0}
!100 = !{!"p1 _ZTSN8LightGBM9BinMapperE", !11, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!"_ZTSN8LightGBM11MissingTypeE", !6, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIdSaIdEE", !105, i64 0}
!107 = !{!"_ZTSN8LightGBM7BinTypeE", !6, i64 0}
!108 = !{!"any p2 pointer", !11, i64 0}
!109 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !108, i64 0}
!110 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!111 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !110, i64 0}
!112 = !{!"float", !6, i64 0}
!113 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !112, i64 0, !29, i64 8}
!114 = !{!"_ZTSSt10_HashtableIiSt4pairIKijESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !109, i64 0, !29, i64 8, !111, i64 16, !29, i64 24, !113, i64 32, !110, i64 48}
!115 = !{!"_ZTSSt13unordered_mapIijSt4hashIiESt8equal_toIiESaISt4pairIKijEEE", !114, i64 0}
!116 = !{!"_ZTSN8LightGBM9BinMapperE", !7, i64 0, !102, i64 4, !106, i64 8, !10, i64 32, !45, i64 40, !107, i64 48, !115, i64 56, !27, i64 112, !45, i64 136, !45, i64 144, !7, i64 152, !7, i64 156}
!117 = !{!116, !45, i64 40}
!118 = !{!116, !7, i64 156}
!119 = !{!116, !7, i64 0}
!120 = !{!75, !74, i64 8}
!121 = !{!"p1 _ZTSN8LightGBM18MultiValBinWrapperE", !11, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM18MultiValBinWrapperELb0EE", !121, i64 0}
!123 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EEE", !122, i64 0}
!124 = !{!"_ZTSSt5tupleIJPN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE", !124, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_ELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt10unique_ptrIN8LightGBM18MultiValBinWrapperESt14default_deleteIS1_EE", !126, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_Vector_implE", !34, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !128, i64 0}
!130 = !{!"_ZTSSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !129, i64 0}
!131 = !{!"_ZTSN8LightGBM19TrainingShareStatesE", !7, i64 0, !10, i64 4, !10, i64 5, !19, i64 8, !7, i64 16, !23, i64 24, !7, i64 48, !127, i64 56, !130, i64 64, !7, i64 88, !45, i64 96}
!132 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !51, i64 0}
!135 = !{!134, !51, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !134, i64 0, !29, i64 8, !6, i64 16}
!137 = !{!136, !51, i64 0}
!138 = !{!136, !29, i64 8}
!139 = distinct !{!139, i1 false, !"LVerDomain"}
!140 = distinct !{!140, !139}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !59, !60, !61}
!143 = distinct !{!143, !59, !60}
!144 = distinct !{!144, !59}
!145 = !{!140}
!146 = !{!141}
!147 = distinct !{!147, i1 false, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !59, !60, !61}
!151 = distinct !{!151, !59, !60}
!152 = distinct !{!152, !59}
!153 = !{!148}
!154 = !{!149}
!155 = distinct !{!155, !63}
!156 = distinct !{!156, !59, !60, !61}
!157 = distinct !{!157, !59}
!158 = distinct !{!158, !59, !61, !60}
!159 = !{!"short", !6, i64 0}
!160 = !{!159, !159, i64 0}
!161 = distinct !{!161, !63}
!162 = distinct !{!162, i1 false, !"LVerDomain"}
!163 = distinct !{!163, !162}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !59, !60, !61}
!166 = distinct !{!166, !59}
!167 = distinct !{!167, !59, !60}
!168 = !{!163}
!169 = !{!164}
!170 = distinct !{!170, i1 false, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !59, !60, !61}
!174 = distinct !{!174, !59, !60}
!175 = distinct !{!175, !59}
!176 = !{!171}
!177 = !{!172}
!178 = distinct !{!178, i1 false, !"LVerDomain"}
!179 = distinct !{!179, !178}
!180 = distinct !{!180, !178}
!181 = distinct !{!181, !59, !60, !61}
!182 = distinct !{!182, !59, !60}
!183 = distinct !{!183, !59}
!184 = !{!179}
!185 = !{!180}
!186 = distinct !{null, null}
!187 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!188 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!189 = !{!30, !29, i64 160}
!190 = !{!30, !29, i64 168}
!191 = !{!30, !29, i64 184}
!192 = !{!30, !7, i64 148}
!193 = !{!30, !7, i64 140}
!194 = distinct !{!194, !59}
!195 = distinct !{!195, !59}
!196 = distinct !{!196, !59}
!197 = distinct !{!197, !59}
!198 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!199 = !{!198, !51, i64 0}
!200 = distinct !{!200, !59}
!201 = !{!34, !28, i64 16}
!202 = distinct !{!202, !59}
!203 = distinct !{!203, !59}
!204 = distinct !{!204, !59}
!205 = distinct !{!205, !59}
!206 = distinct !{!206, !216}
!207 = distinct !{!207, !59}
!208 = distinct !{!208, !59}
!209 = distinct !{!209, !59}
!210 = distinct !{!210, !59}
!211 = distinct !{!211, !59}
!212 = distinct !{!212, !59}
!213 = distinct !{!213, !59}
!214 = distinct !{!214, !59}
!215 = !{!96, !10, i64 89}
!216 = !{!"llvm.loop.unroll.disable"}
!217 = !{!131, !7, i64 48}
!218 = distinct !{!218, !59}
!219 = !{!131, !7, i64 0}
!220 = !{!131, !7, i64 88}
!221 = !{!131, !45, i64 96}
!222 = !{!121, !121, i64 0}
!223 = distinct !{null, null, null}
end_hunk_0
