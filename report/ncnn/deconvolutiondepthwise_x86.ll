Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn26DeconvolutionDepthWise_x8616create_group_opsERKNS_6OptionE:bb.a
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #12
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn47 = phi { ptr, i32 } [ %i.kc, %bb.cy ], [ %i.kb, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.cz ], [ %i.ka, %bb.cw ]
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !11 ; 2 uses
  %.not.i95 = icmp eq ptr %i.ke, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit63, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kf = atomicrmw add ptr %i.ke, i32 -1 acq_rel, align 4
  %i.kg = icmp eq i32 %i.kf, 1
  br i1 %i.kg, label %bb.dc, label %_ZN4ncnn3MatD2Ev.exit63

bb.dc:                                            ; preds = %bb.db
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ki = load ptr, ptr %i.kh, align 16, !tbaa !17 ; 3 uses
  %.not3.i96 = icmp eq ptr %i.ki, null
  %i.kj = load ptr, ptr %7, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i96, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  invoke void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef %i.kj)
          to label %_ZN4ncnn3MatD2Ev.exit63 unwind label %bb.dg, !inline_history !19

bb.de:                                            ; preds = %bb.dc
  %.not.i122 = icmp eq ptr %i.kj, null
  br i1 %.not.i122, label %_ZN4ncnn3MatD2Ev.exit63, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @free(ptr noundef nonnull %i.kj) #12
  br label %_ZN4ncnn3MatD2Ev.exit63

bb.dg:                                            ; preds = %bb.dd
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit63:                          ; preds = %bb.db, %bb.da, %bb.dd, %bb.de, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.do

bb.dh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit64, %_ZN4ncnn3MatD2Ev.exit66.1
  %i.kp = load ptr, ptr %i.fh, align 8, !tbaa !9
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = invoke noundef i32 %i.kr(ptr noundef nonnull align 8 dereferenceable(208) %i.fh, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN4ncnn3MatD2Ev.exit62 unwind label %bb.bq ; 0 uses

_ZN4ncnn3MatD2Ev.exit62:                          ; preds = %bb.dh
  %i.kt = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv357
  store ptr %i.fh, ptr %i.ku, align 8, !tbaa !76
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.kv = load ptr, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %.not.i103 = icmp eq ptr %i.kv, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit61, label %bb.di

bb.di:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit62
  %i.kw = atomicrmw add ptr %i.kv, i32 -1 acq_rel, align 4
  %i.kx = icmp eq i32 %i.kw, 1
  br i1 %i.kx, label %bb.dj, label %_ZN4ncnn3MatD2Ev.exit61

bb.dj:                                            ; preds = %bb.di
  %i.ky = load ptr, ptr %i.cc, align 16, !tbaa !17 ; 3 uses
  %.not3.i104 = icmp eq ptr %i.ky, null
  %i.kz = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i104, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !9
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  invoke void %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef %i.kz)
          to label %_ZN4ncnn3MatD2Ev.exit61 unwind label %bb.dn, !inline_history !19

bb.dl:                                            ; preds = %bb.dj
  %.not.i118 = icmp eq ptr %i.kz, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit61, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @free(ptr noundef nonnull %i.kz) #12
  br label %_ZN4ncnn3MatD2Ev.exit61

bb.dn:                                            ; preds = %bb.dk
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit61:                          ; preds = %bb.di, %_ZN4ncnn3MatD2Ev.exit62, %bb.dk, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %i.lf = load i32, ptr %i.h, align 4, !tbaa !46
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next358, %i.lg
  br i1 %i.lh, label %bb.g, label %._crit_edge353, !llvm.loop !131

bb.do:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit63, %_ZN4ncnn3MatD2Ev.exit65.1, %bb.bq
  %.pn54 = phi { ptr, i32 } [ %i.ht, %bb.bq ], [ %.pn51.pn, %_ZN4ncnn3MatD2Ev.exit65.1 ], [ %.pn47.pn, %_ZN4ncnn3MatD2Ev.exit63 ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.bp
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.do ], [ %i.hs, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN4ncnn3MatD2Ev.exit60

_ZN4ncnn3MatD2Ev.exit60:                          ; preds = %bb.bo, %bb.dp
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.bo ], [ %.pn54.pn, %bb.dp ] ; 5 uses
  %i.li = load ptr, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %.not.i111 = icmp eq ptr %i.li, null
  br i1 %.not.i111, label %_ZN4ncnn3MatD2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit60
  %i.lj = atomicrmw add ptr %i.li, i32 -1 acq_rel, align 4
  %i.lk = icmp eq i32 %i.lj, 1
  br i1 %i.lk, label %bb.dr, label %_ZN4ncnn3MatD2Ev.exit

bb.dr:                                            ; preds = %bb.dq
  %i.ll = load ptr, ptr %i.cc, align 16, !tbaa !17 ; 3 uses
  %.not3.i112 = icmp eq ptr %i.ll, null
  %i.lm = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i112, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ln = load ptr, ptr %i.ll, align 8, !tbaa !9
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %i.ll, ptr noundef %i.lm)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.dv, !inline_history !19

bb.dt:                                            ; preds = %bb.dr
  %.not.i115 = icmp eq ptr %i.lm, null
  br i1 %.not.i115, label %_ZN4ncnn3MatD2Ev.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @free(ptr noundef nonnull %i.lm) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.dv:                                            ; preds = %bb.ds
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #20
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.du, %bb.dt, %bb.ds, %_ZN4ncnn3MatD2Ev.exit60, %bb.dq, %_ZN4ncnn3MatD2Ev.exit68
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %_ZN4ncnn3MatD2Ev.exit68 ], [ %.pn54.pn.pn.pn, %bb.dq ], [ %.pn54.pn.pn.pn, %_ZN4ncnn3MatD2Ev.exit60 ], [ %.pn54.pn.pn.pn, %bb.ds ], [ %.pn54.pn.pn.pn, %bb.dt ], [ %.pn54.pn.pn.pn, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn
}

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat5cloneEPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !76
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !75
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN4ncnn5LayerESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIPN4ncnn5LayerESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !76
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN4ncnn5LayerESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !76
  br label %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN4ncnn5LayerEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN4ncnn5LayerESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %2 = load ptr, ptr %i.h, align 8, !tbaa !25
  %3 = ptrtoint ptr %2 to i64
  %i.ad = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #21
  br label %_ZNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN4ncnn5LayerEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn26DeconvolutionDepthWise_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not233 = icmp sgt i32 %i.k, %i.j
  br i1 %.not233, label %._crit_edge235, label %_ZN4ncnn3MatD2Ev.exit68.lr.ph

_ZN4ncnn3MatD2Ev.exit68.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 536
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 3 uses
  %i.ab = load i32, ptr %7, align 4, !tbaa !72    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3MatD2Ev.exit68.preheader, label %._crit_edge235

_ZN4ncnn3MatD2Ev.exit68.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit68.lr.ph
  %i.ad = sext i32 %i.k to i64
  %i.ae = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit68

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %_ZN4ncnn3MatD2Ev.exit68.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.af = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ag = phi i32 [ %i.ab, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv240 = phi i64 [ %i.ad, %_ZN4ncnn3MatD2Ev.exit68.preheader ], [ %indvars.iv.next241, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ai = load i32, ptr %5, align 4, !tbaa !72
  %i.aj = trunc nsw i64 %indvars.iv240 to i32
  %i.ak = shl i32 %i.aj, 2
  %i.al = mul i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !18, !noalias !132
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !132
  %i.aq = mul i64 %i.ap, %indvars.iv240
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !70, !noalias !132 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = icmp sgt i32 %i.ag, 0
  br i1 %i.au, label %.preheader217.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader217.lr.ph:                              ; preds = %_ZN4ncnn3MatD2Ev.exit68
  %i.av = load i32, ptr %i.o, align 4, !tbaa !80, !noalias !132
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.ar, %i.aw
  %i.ay = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader217.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader217.preheader:                          ; preds = %.preheader217.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !135
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !135
  %i.bc = mul i64 %i.bb, %indvars.iv240
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !135
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be
  %.idx = shl nsw i64 %indvars.iv240, 4
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.preheader, %._crit_edge229
  %i.bg = phi i32 [ %i.bl, %._crit_edge229 ], [ %i.af, %.preheader217.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge229 ], [ %i.ay, %.preheader217.preheader ] ; 2 uses
  %.056232 = phi i32 [ %.neg214, %._crit_edge229 ], [ 0, %.preheader217.preheader ]
  %.057231 = phi ptr [ %.1.lcssa, %._crit_edge229 ], [ %i.bf, %.preheader217.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %.neg214 = add nuw nsw i32 %.056232, 1          ; 3 uses
  br i1 %i.bi, label %.lr.ph228, label %._crit_edge229

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge229, %.preheader217.lr.ph, %_ZN4ncnn3MatD2Ev.exit68
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.af, %.preheader217.lr.ph ], [ %i.bl, %._crit_edge229 ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit68 ], [ %i.ag, %.preheader217.lr.ph ], [ %i.bl, %._crit_edge229 ]
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next241 to i32
  %exitcond243.not = icmp eq i32 %i.ae, %lftr.wideiv
  br i1 %exitcond243.not, label %._crit_edge235, label %_ZN4ncnn3MatD2Ev.exit68, !llvm.loop !138

._crit_edge229.loopexit:                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %.preheader217, %._crit_edge229.loopexit
  %i.bl = phi i32 [ %.pre, %._crit_edge229.loopexit ], [ %i.bg, %.preheader217 ] ; 4 uses
  %i.bm = phi i32 [ %i.jt, %._crit_edge229.loopexit ], [ %i.bh, %.preheader217 ]
  %.1.lcssa = phi ptr [ %i.jr, %._crit_edge229.loopexit ], [ %.057231, %.preheader217 ]
  %i.bn = icmp slt i32 %.neg214, %i.bl
  br i1 %i.bn, label %.preheader217, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !140

.lr.ph228:                                        ; preds = %.preheader217, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.055227 = phi i32 [ %i.js, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ 0, %.preheader217 ] ; 2 uses
  %.1226 = phi ptr [ %i.jr, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %.057231, %.preheader217 ] ; 2 uses
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !84
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph228
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph228
  %.0210 = phi nsz <4 x float> [ zeroinitializer, %.lr.ph228 ], [ %i.br, %bb.c ] ; 2 uses
  %i.bs = load i32, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph222, label %._crit_edge

.lr.ph222:                                        ; preds = %bb.d
  %i.bu = load i32, ptr %i.u, align 8, !tbaa !97
  %i.bv = load i32, ptr %9, align 4, !tbaa !72
  %invariant.op224 = sub i32 %.neg214, %i.bv
  %.neg216 = add nuw nsw i32 %.055227, 1
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.1211.lcssa = phi <4 x float> [ %.0210, %bb.d ], [ %.4, %.loopexit ] ; 10 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !108
  switch i32 %i.bw, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.e
    i32 2, label %.noexc76
    i32 3, label %bb.f
    i32 4, label %.noexc77
    i32 5, label %.noexc78
    i32 6, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1211.lcssa, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc76:                                         ; preds = %._crit_edge
  %i.by = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.bz = load float, ptr %i.by, align 4, !tbaa !53
  %i.ca = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.1211.lcssa)
  %i.cc = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fmul fast <4 x float> %i.cd, %i.cb
  %i.cf = fadd fast <4 x float> %i.ce, %i.ca
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
end_hunk_0
