Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidbackend?download=true
inline.NumInlined: 7166
inline.NumDeleted: 3406
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_:bb.a
  %i.ajq = icmp eq ptr %i.ajo, %i.ajp
  br i1 %i.ajq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.kt
  %i.ajr = load i64, ptr %i.ajp, align 8, !tbaa !65
  %i.ajs = add i64 %i.ajr, 1
  call void @_ZdlPvm(ptr noundef %i.ajo, i64 noundef %i.ajs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.ks
  %.pn17.i = phi { ptr, i32 } [ %i.ajm, %bb.ks ], [ %i.ajn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %i.ajn, %bb.kt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.body332

bb.ku:                                            ; preds = %bb.ko
  %.sroa.6.8.extract.trunc.i = trunc i64 %.sroa.7.0.copyload to i32 ; 2 uses
  %i.ajt = and i32 %.sroa.6.8.extract.trunc.i, 1
  %i.aju = icmp eq i32 %i.ajt, 0
  br i1 %i.aju, label %bb.la, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.kw unwind label %bb.ky

bb.kw:                                            ; preds = %bb.kv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @"__func__._ZZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_ENK3$_2clES7_m", ptr noundef nonnull @.str.1, i32 noundef 680) #32
          to label %bb.kx unwind label %bb.kz

bb.kx:                                            ; preds = %bb.kw
  unreachable

bb.ky:                                            ; preds = %bb.kv
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

bb.kz:                                            ; preds = %bb.kw
  %i.ajw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajx = load ptr, ptr %11, align 8, !tbaa !105 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ajz = icmp eq ptr %i.ajx, %i.ajy
  br i1 %i.ajz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.kz
  %i.aka = load i64, ptr %i.ajy, align 8, !tbaa !65
  %i.akb = add i64 %i.aka, 1
  call void @_ZdlPvm(ptr noundef %i.ajx, i64 noundef %i.akb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %bb.ky
  %.pn19.i = phi { ptr, i32 } [ %i.ajv, %bb.ky ], [ %i.ajw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.ajw, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %.body332

bb.la:                                            ; preds = %bb.ku
  %.sroa.6.12.extract.shift.i = lshr i64 %.sroa.7.0.copyload, 32
  %.sroa.6.12.extract.trunc.i = trunc nuw i64 %.sroa.6.12.extract.shift.i to i32 ; 2 uses
  %i.akc = and i32 %.sroa.6.12.extract.trunc.i, 1
  %i.akd = icmp eq i32 %i.akc, 0
  br i1 %i.akd, label %bb.lg, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.lc unwind label %bb.le

bb.lc:                                            ; preds = %bb.lb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @"__func__._ZZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_ENK3$_2clES7_m", ptr noundef nonnull @.str.1, i32 noundef 681) #32
          to label %bb.ld unwind label %bb.lf

bb.ld:                                            ; preds = %bb.lc
  unreachable

bb.le:                                            ; preds = %bb.lb
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

bb.lf:                                            ; preds = %bb.lc
  %i.akf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akg = load ptr, ptr %13, align 8, !tbaa !105 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aki = icmp eq ptr %i.akg, %i.akh
  br i1 %i.aki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %bb.lf
  %i.akj = load i64, ptr %i.akh, align 8, !tbaa !65
  %i.akk = add i64 %i.akj, 1
  call void @_ZdlPvm(ptr noundef %i.akg, i64 noundef %i.akk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %bb.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i, %bb.le
  %.pn21.i = phi { ptr, i32 } [ %i.ake, %bb.le ], [ %i.akf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i ], [ %i.akf, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %.body332

bb.lg:                                            ; preds = %bb.la
  switch i64 %i.aja, label %bb.li [
    i64 0, label %bb.ls
    i64 1, label %bb.lh
    i64 2, label %bb.lh
  ]

bb.lh:                                            ; preds = %bb.lg, %bb.lg
  %i.akl = ashr exact i32 %.sroa.0.sroa.0.0.extract.trunc.i, 1
  %i.akm = ashr exact i32 %.sroa.0.sroa.4.0.extract.trunc.i, 1
  %i.akn = ashr exact i32 %.sroa.6.8.extract.trunc.i, 1
  %i.ako = ashr exact i32 %.sroa.6.12.extract.trunc.i, 1
  %.sroa.53.8.insert.ext.i = zext i32 %i.akn to i64
  %.sroa.53.12.insert.ext.i = zext i32 %i.ako to i64
  %.sroa.53.12.insert.shift.i = shl nuw i64 %.sroa.53.12.insert.ext.i, 32
  %.sroa.53.12.insert.insert.i = or disjoint i64 %.sroa.53.12.insert.shift.i, %.sroa.53.8.insert.ext.i
  br label %bb.ls

bb.li:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.lj unwind label %bb.ll

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @"__func__._ZZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_ENK3$_2clES7_m", ptr noundef nonnull @.str.1, i32 noundef 688) #32
          to label %bb.lk unwind label %bb.lm

bb.lk:                                            ; preds = %bb.lj
  unreachable

bb.ll:                                            ; preds = %bb.li
  %i.akp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

bb.lm:                                            ; preds = %bb.lj
  %i.akq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akr = load ptr, ptr %15, align 8, !tbaa !105 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.akt = icmp eq ptr %i.akr, %i.aks
  br i1 %i.akt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %bb.lm
  %i.aku = load i64, ptr %i.aks, align 8, !tbaa !65
  %i.akv = add i64 %i.aku, 1
  call void @_ZdlPvm(ptr noundef %i.akr, i64 noundef %i.akv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %bb.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i, %bb.ll
  %.pn23.i = phi { ptr, i32 } [ %i.akp, %bb.ll ], [ %i.akq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i ], [ %i.akq, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.body332

bb.ln:                                            ; preds = %.loopexit751
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %61)
          to label %bb.lo unwind label %bb.lq

bb.lo:                                            ; preds = %bb.ln
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @__func__._ZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_, ptr noundef nonnull @.str.1, i32 noundef 702) #32
          to label %bb.lp unwind label %bb.lr

bb.lp:                                            ; preds = %bb.lo
  unreachable

bb.lq:                                            ; preds = %bb.ln
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490

bb.lr:                                            ; preds = %bb.lo
  %i.akx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aky = load ptr, ptr %60, align 8, !tbaa !105 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.ala = icmp eq ptr %i.aky, %i.akz
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488: ; preds = %bb.lr
  %i.alb = load i64, ptr %i.akz, align 8, !tbaa !65
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.alc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490: ; preds = %bb.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488, %bb.lq
  %.pn127 = phi { ptr, i32 } [ %i.akw, %bb.lq ], [ %i.akx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488 ], [ %i.akx, %bb.lr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #30
  br label %.body332

bb.ls:                                            ; preds = %bb.lg, %bb.lh, %bb.jp, %bb.jj
  %.sroa.0644.sroa.0.0 = phi i32 [ %.sroa.0644.sroa.0.0.extract.trunc657, %bb.jj ], [ %.0.i15.i, %bb.jp ], [ %i.akl, %bb.lh ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %bb.lg ] ; 3 uses
  %.sroa.0644.sroa.8.0 = phi i32 [ %.sroa.0644.sroa.8.0.extract.trunc661, %bb.jj ], [ %.0.i.i, %bb.jp ], [ %i.akm, %bb.lh ], [ %.sroa.0.sroa.4.0.extract.trunc.i, %bb.lg ] ; 7 uses
  %.sroa.11.0 = phi i64 [ %.sroa.7.0.copyload, %bb.jj ], [ %.sroa.3.8.insert.insert.i, %bb.jp ], [ %.sroa.53.12.insert.insert.i, %bb.lh ], [ %.sroa.7.0.copyload, %bb.lg ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #30
  %i.ald = load ptr, ptr %i.cr, align 8, !tbaa !75, !noalias !715, !nonnull !89, !noundef !89 ; 7 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 8 ; 7 uses
  %i.alf = load atomic i32, ptr %i.ale monotonic, align 8, !noalias !715
  br label %bb.lt

bb.lt:                                            ; preds = %bb.lt, %bb.ls
  %.06.i.i.i.i.i.i.i492 = phi i32 [ %i.alf, %bb.ls ], [ %i.alj, %bb.lt ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i493 = icmp ne i32 %.06.i.i.i.i.i.i.i492, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i493)
  %i.alg = add nsw i32 %.06.i.i.i.i.i.i.i492, 1
  %i.alh = cmpxchg weak ptr %i.ale, i32 %.06.i.i.i.i.i.i.i492, i32 %i.alg acq_rel monotonic, align 8, !noalias !715 ; 2 uses
  %i.ali = extractvalue { i32, i1 } %i.alh, 1
  %i.alj = extractvalue { i32, i1 } %i.alh, 0
  br i1 %i.ali, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i494, label %bb.lt, !llvm.loop !4

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i494: ; preds = %bb.lt
  %i.alk = load atomic i32, ptr %i.ale monotonic, align 8, !noalias !715 ; 0 uses
  %i.all = load ptr, ptr %59, align 16
  %i.alm = load atomic i64, ptr %i.ale acquire, align 8 ; 2 uses
  %i.aln = icmp eq i64 %i.alm, 4294967297
  %i.alo = trunc i64 %i.alm to i32                ; 2 uses
  br i1 %i.aln, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i494
  store i32 0, ptr %i.ale, align 8, !tbaa !56
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ald, i64 12
  store i32 0, ptr %i.alp, align 4, !tbaa !57
  %i.alq = load ptr, ptr %i.ald, align 8, !tbaa !59
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 16
  %i.als = load ptr, ptr %i.alr, align 8
  call void %i.als(ptr noundef nonnull align 8 dereferenceable(16) %i.ald) #30, !inline_history !5
  %i.alt = load ptr, ptr %i.ald, align 8, !tbaa !59
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 24
  %i.alv = load ptr, ptr %i.alu, align 8
  call void %i.alv(ptr noundef nonnull align 8 dereferenceable(16) %i.ald) #30, !inline_history !5
  br label %bb.lz

bb.lv:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i494
  %i.alw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i1.i.i497 = icmp eq i8 %i.alw, 0
  br i1 %.not.i.i.i1.i.i497, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.alx = add nsw i32 %i.alo, -1
  store i32 %i.alx, ptr %i.ale, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i498

bb.lx:                                            ; preds = %bb.lv
  %i.aly = atomicrmw volatile add ptr %i.ale, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i498

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i498: ; preds = %bb.lx, %bb.lw
  %.0.i.i.i.i.i.i499 = phi i32 [ %i.alo, %bb.lw ], [ %i.aly, %bb.lx ]
  %i.alz = icmp eq i32 %.0.i.i.i.i.i.i499, 1
  br i1 %i.alz, label %bb.ly, label %bb.lz, !prof !67

bb.ly:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i498
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ald) #30
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i498, %bb.lu
  invoke void @_ZN3ade4Node7inNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.387") align 8 %62, ptr noundef nonnull align 8 dereferenceable(72) %i.all)
          to label %bb.ma unwind label %bb.no

bb.ma:                                            ; preds = %bb.lz
  %i.ama = load ptr, ptr %62, align 8, !tbaa !130
  %i.amb = load ptr, ptr %i.dc, align 8, !tbaa !130
  %i.amc = icmp eq ptr %i.ama, %i.amb
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  br i1 %i.amc, label %bb.nz, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #30
  %i.amd = load ptr, ptr %i.cr, align 8, !tbaa !75, !noalias !716, !nonnull !89, !noundef !89 ; 7 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8 ; 7 uses
  %i.amf = load atomic i32, ptr %i.ame monotonic, align 8, !noalias !716
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mc, %bb.mb
  %.06.i.i.i.i.i.i.i502 = phi i32 [ %i.amf, %bb.mb ], [ %i.amj, %bb.mc ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i503 = icmp ne i32 %.06.i.i.i.i.i.i.i502, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i.i503)
  %i.amg = add nsw i32 %.06.i.i.i.i.i.i.i502, 1
  %i.amh = cmpxchg weak ptr %i.ame, i32 %.06.i.i.i.i.i.i.i502, i32 %i.amg acq_rel monotonic, align 8, !noalias !716 ; 2 uses
  %i.ami = extractvalue { i32, i1 } %i.amh, 1
  %i.amj = extractvalue { i32, i1 } %i.amh, 0
  br i1 %i.ami, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i504, label %bb.mc, !llvm.loop !4

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i504: ; preds = %bb.mc
  %i.amk = load atomic i32, ptr %i.ame monotonic, align 8, !noalias !716 ; 0 uses
  %i.aml = load ptr, ptr %59, align 16
  %i.amm = load atomic i64, ptr %i.ame acquire, align 8 ; 2 uses
  %i.amn = icmp eq i64 %i.amm, 4294967297
  %i.amo = trunc i64 %i.amm to i32                ; 2 uses
  br i1 %i.amn, label %bb.md, label %bb.me

bb.md:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i504
  store i32 0, ptr %i.ame, align 8, !tbaa !56
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amd, i64 12
  store i32 0, ptr %i.amp, align 4, !tbaa !57
  %i.amq = load ptr, ptr %i.amd, align 8, !tbaa !59
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 16
  %i.ams = load ptr, ptr %i.amr, align 8
  call void %i.ams(ptr noundef nonnull align 8 dereferenceable(16) %i.amd) #30, !inline_history !5
  %i.amt = load ptr, ptr %i.amd, align 8, !tbaa !59
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 24
  %i.amv = load ptr, ptr %i.amu, align 8
  call void %i.amv(ptr noundef nonnull align 8 dereferenceable(16) %i.amd) #30, !inline_history !5
  br label %bb.mi

bb.me:                                            ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i504
  %i.amw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i1.i.i507 = icmp eq i8 %i.amw, 0
  br i1 %.not.i.i.i1.i.i507, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.amx = add nsw i32 %i.amo, -1
  store i32 %i.amx, ptr %i.ame, align 8, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508

bb.mg:                                            ; preds = %bb.me
  %i.amy = atomicrmw volatile add ptr %i.ame, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508: ; preds = %bb.mg, %bb.mf
  %.0.i.i.i.i.i.i509 = phi i32 [ %i.amo, %bb.mf ], [ %i.amy, %bb.mg ]
  %i.amz = icmp eq i32 %.0.i.i.i.i.i.i509, 1
  br i1 %i.amz, label %bb.mh, label %bb.mi, !prof !67

bb.mh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.amd) #30
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i508, %bb.md
  invoke void @_ZN3ade4Node7inNodesEv(ptr dead_on_unwind nonnull writable sret(%"struct.ade::util::Range::MapRange.387") align 8 %64, ptr noundef nonnull align 8 dereferenceable(72) %i.aml)
          to label %bb.mj unwind label %bb.np

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !717
  %i.ana = load ptr, ptr %64, align 8, !tbaa !143, !noalias !718
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !133, !noalias !718
  invoke void @_ZNK3ade4Node12HandleMapperclEPNS_4EdgeE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle.390") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %i.dd, ptr noundef %i.anb)
          to label %.noexc520 unwind label %bb.np

.noexc520:                                        ; preds = %bb.mj
  invoke void @_ZNK3ade4Node12InEdgeMapperclERKNS_6HandleINS_4EdgeEEE(ptr dead_on_unwind nonnull writable sret(%"class.ade::Handle") align 8 %63, ptr noundef nonnull align 1 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.mk unwind label %bb.mp

bb.mk:                                            ; preds = %.noexc520
  %i.anc = load ptr, ptr %i.df, align 8, !tbaa !75, !noalias !717 ; 4 uses
  %.not.i.i.i.i516 = icmp eq ptr %i.anc, null
  br i1 %.not.i.i.i.i516, label %bb.mu, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 12 ; 3 uses
  %i.ane = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !717
  %.not.i.i.i.i.i517 = icmp eq i8 %i.ane, 0
  br i1 %.not.i.i.i.i.i517, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.anf = load i32, ptr %i.and, align 4, !tbaa !66 ; 2 uses
  %i.ang = add nsw i32 %i.anf, -1
  store i32 %i.ang, ptr %i.and, align 4, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i518

bb.mn:                                            ; preds = %bb.ml
  %i.anh = atomicrmw volatile add ptr %i.and, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i518

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i518: ; preds = %bb.mn, %bb.mm
  %.0.i.i.i.i.i.i519 = phi i32 [ %i.anf, %bb.mm ], [ %i.anh, %bb.mn ]
  %i.ani = icmp eq i32 %.0.i.i.i.i.i.i519, 1
  br i1 %i.ani, label %bb.mo, label %bb.mu

bb.mo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i518
  %i.anj = load ptr, ptr %i.anc, align 8, !tbaa !59
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 24
  %i.anl = load ptr, ptr %i.ank, align 8
  call void %i.anl(ptr noundef nonnull align 8 dereferenceable(16) %i.anc) #30, !inline_history !15
  br label %bb.mu

bb.mp:                                            ; preds = %.noexc520
  %i.anm = landingpad { ptr, i32 }
          cleanup
  %i.ann = load ptr, ptr %i.df, align 8, !tbaa !75, !noalias !717 ; 4 uses
  %.not.i.i.i2.i511 = icmp eq ptr %i.ann, null
  br i1 %.not.i.i.i2.i511, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i515, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 12 ; 3 uses
  %i.anp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !717
  %.not.i.i.i.i3.i512 = icmp eq i8 %i.anp, 0
  br i1 %.not.i.i.i.i3.i512, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.anq = load i32, ptr %i.ano, align 4, !tbaa !66 ; 2 uses
  %i.anr = add nsw i32 %i.anq, -1
  store i32 %i.anr, ptr %i.ano, align 4, !tbaa !66
end_hunk_0
begin_hunk_1_@_ZN2cv5gimpl16GFluidExecutable14initBufferRoisERSt6vectorIiSaIiEERS2_INS_5Rect_IiEESaIS7_EERKS9_:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i513: ; preds = %bb.ms, %bb.mr
  %.0.i.i.i.i.i5.i514 = phi i32 [ %i.anq, %bb.mr ], [ %i.ans, %bb.ms ]
  %i.ant = icmp eq i32 %.0.i.i.i.i.i5.i514, 1
  br i1 %i.ant, label %bb.mt, label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i515

bb.mt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i513
  %i.anu = load ptr, ptr %i.ann, align 8, !tbaa !59
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 24
  %i.anw = load ptr, ptr %i.anv, align 8
  call void %i.anw(ptr noundef nonnull align 8 dereferenceable(16) %i.ann) #30, !inline_history !15
  br label %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i515

_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i515:         ; preds = %bb.mt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i4.i513, %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !717
  br label %.body521

bb.mu:                                            ; preds = %bb.mo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i518, %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.anx = load i64, ptr %37, align 8, !tbaa !71, !noalias !719
  %i.any = inttoptr i64 %i.anx to ptr
  %i.anz = load ptr, ptr %i.dh, align 8, !tbaa !75, !noalias !719 ; 2 uses
  %i.aoa = load <2 x ptr>, ptr %63, align 16, !tbaa !64, !noalias !719
  store <2 x ptr> %i.aoa, ptr %5, align 16, !tbaa !64, !noalias !719
  %.not.i.i.i.i.i524 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i.i.i.i524, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i526, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 12 ; 3 uses
  %i.aoc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !719
  %.not.i.i.i.i.i.i525 = icmp eq i8 %i.aoc, 0
  br i1 %.not.i.i.i.i.i.i525, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.aod = load i32, ptr %i.aob, align 4, !tbaa !66, !noalias !719
  %i.aoe = add nsw i32 %i.aod, 1
  store i32 %i.aoe, ptr %i.aob, align 4, !tbaa !66, !noalias !719
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i526

bb.mx:                                            ; preds = %bb.mv
  %i.aof = atomicrmw volatile add ptr %i.aob, i32 1 acq_rel, align 4, !noalias !719 ; 0 uses
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i526

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i526:      ; preds = %bb.mx, %bb.mw, %bb.mu
  %i.aog = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK3ade5Graph8metadataENS_6HandleINS_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(168) %i.any, ptr noundef nonnull align 8 %5)
          to label %bb.my unwind label %bb.nd, !noalias !719 ; 5 uses

bb.my:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i526
  %i.aoh = load ptr, ptr %i.dg, align 8, !tbaa !75, !noalias !719 ; 4 uses
  %.not.i.i.i.i532 = icmp eq ptr %i.aoh, null
  br i1 %.not.i.i.i.i532, label %bb.ni, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 12 ; 3 uses
  %i.aoj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !719
  %.not.i.i.i.i3.i533 = icmp eq i8 %i.aoj, 0
  br i1 %.not.i.i.i.i3.i533, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aok = load i32, ptr %i.aoi, align 4, !tbaa !66, !noalias !719 ; 2 uses
  %i.aol = add nsw i32 %i.aok, -1
  store i32 %i.aol, ptr %i.aoi, align 4, !tbaa !66, !noalias !719
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534

bb.nb:                                            ; preds = %bb.mz
  %i.aom = atomicrmw volatile add ptr %i.aoi, i32 -1 acq_rel, align 4, !noalias !719
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534: ; preds = %bb.nb, %bb.na
  %.0.i.i.i.i.i.i535 = phi i32 [ %i.aok, %bb.na ], [ %i.aom, %bb.nb ]
  %i.aon = icmp eq i32 %.0.i.i.i.i.i.i535, 1
  br i1 %i.aon, label %bb.nc, label %bb.ni

bb.nc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534
  %i.aoo = load ptr, ptr %i.aoh, align 8, !tbaa !59, !noalias !719
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 24
  %i.aoq = load ptr, ptr %i.aop, align 8, !noalias !719
  call void %i.aoq(ptr noundef nonnull align 8 dereferenceable(16) %i.aoh) #30, !noalias !719, !inline_history !1
  br label %bb.ni

bb.nd:                                            ; preds = %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i526
  %i.aor = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aos = load ptr, ptr %i.dg, align 8, !tbaa !75, !noalias !719 ; 4 uses
  %.not.i.i.i4.i527 = icmp eq ptr %i.aos, null
  br i1 %.not.i.i.i4.i527, label %.body536, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 12 ; 3 uses
  %i.aou = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65, !noalias !719
  %.not.i.i.i.i5.i528 = icmp eq i8 %i.aou, 0
  br i1 %.not.i.i.i.i5.i528, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.aov = load i32, ptr %i.aot, align 4, !tbaa !66, !noalias !719 ; 2 uses
  %i.aow = add nsw i32 %i.aov, -1
  store i32 %i.aow, ptr %i.aot, align 4, !tbaa !66, !noalias !719
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i529

bb.ng:                                            ; preds = %bb.ne
  %i.aox = atomicrmw volatile add ptr %i.aot, i32 -1 acq_rel, align 4, !noalias !719
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i529

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i529: ; preds = %bb.ng, %bb.nf
  %.0.i.i.i.i.i7.i530 = phi i32 [ %i.aov, %bb.nf ], [ %i.aox, %bb.ng ]
  %i.aoy = icmp eq i32 %.0.i.i.i.i.i7.i530, 1
  br i1 %i.aoy, label %bb.nh, label %.body536

bb.nh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i529
  %i.aoz = load ptr, ptr %i.aos, align 8, !tbaa !59, !noalias !719
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 24
  %i.apb = load ptr, ptr %i.apa, align 8, !noalias !719
  call void %i.apb(ptr noundef nonnull align 8 dereferenceable(16) %i.aos) #30, !noalias !719, !inline_history !1
  br label %.body536

bb.ni:                                            ; preds = %bb.nc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534, %bb.my
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i.i539 = load ptr, ptr %i.d, align 8, !tbaa !64
  store ptr %.sroa.0.0.copyload.i.i539, ptr %4, align 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aog, i64 32
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !87
  %.not.not.i.i.i.i540 = icmp eq i64 %i.apd, 0
  br i1 %.not.not.i.i.i.i540, label %bb.nj, label %bb.nl

bb.nj:                                            ; preds = %bb.ni
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  br label %bb.nk

bb.nk:                                            ; preds = %.noexc554, %bb.nj
  %.sroa.06.0.in.i.i.i.i552 = phi ptr [ %i.ape, %bb.nj ], [ %.sroa.06.0.i.i.i.i553, %.noexc554 ]
  %.sroa.06.0.i.i.i.i553 = load ptr, ptr %.sroa.06.0.in.i.i.i.i552, align 8, !tbaa !88, !nonnull !89, !noundef !89 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i553, i64 8
  %i.apg = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.apf)
          to label %.noexc554 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc554:                                        ; preds = %bb.nk
  br i1 %i.apg, label %.loopexit737, label %bb.nk, !llvm.loop !2

bb.nl:                                            ; preds = %bb.ni
  %i.aph = invoke noundef i64 @_ZNK3ade7details8Metadata6IdHashclERKNS0_10MetadataIdE(ptr noundef nonnull align 8 dereferenceable(64) %i.aog, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc555 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc555:                                        ; preds = %bb.nl
  %i.api = getelementptr inbounds nuw i8, ptr %i.aog, i64 16 ; 2 uses
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !91 ; 2 uses
  %i.apk = urem i64 %i.aph, %i.apj                ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !92
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.apm, i64 %i.apk
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !93, !nonnull !89, !noundef !89 ; 2 uses
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !88 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i541 = getelementptr inbounds nuw i8, ptr %i.app, i64 24
  %.pre.i.i.i.i.i.i542 = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i541, align 8, !tbaa !95
  br label %bb.nm

bb.nm:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545, %.noexc555
  %i.apq = phi i64 [ %i.apj, %.noexc555 ], [ %i.apv, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545 ]
  %i.apr = phi i64 [ %.pre.i.i.i.i.i.i542, %.noexc555 ], [ %i.apy, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545 ]
  %.015.i.i.i.i.i.i543 = phi ptr [ %i.apo, %.noexc555 ], [ %.0.i.i.i.i.i.i544, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545 ]
  %.0.i.i.i.i.i.i544 = phi ptr [ %i.app, %.noexc555 ], [ %i.apw, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545 ] ; 3 uses
  %i.aps = icmp eq i64 %i.aph, %i.apr
  br i1 %i.aps, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i547, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i547: ; preds = %bb.nm
  %i.apt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i544, i64 8
  %i.apu = invoke noundef zeroext i1 @_ZNK3ade7details10MetadataIdeqERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.apt)
          to label %.noexc556 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc556:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i547
  br i1 %i.apu, label %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i550, label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i548

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i548: ; preds = %.noexc556
  %.pre.i.i549 = load i64, ptr %i.api, align 8, !tbaa !91
  br label %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545

_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i.i.i545: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i548, %bb.nm
  %i.apv = phi i64 [ %.pre.i.i549, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i._ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i.i.i_crit_edge.i.i548 ], [ %i.apq, %bb.nm ] ; 2 uses
  %i.apw = load ptr, ptr %.0.i.i.i.i.i.i544, align 8, !tbaa !88, !nonnull !89, !noundef !89 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 24
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !95 ; 2 uses
  %i.apz = urem i64 %i.apy, %i.apv
  %.not19.i.i.i.i.i.i546 = icmp eq i64 %i.apz, %i.apk
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i546)
  br label %bb.nm

_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i550: ; preds = %.noexc556
  %i.aqa = load ptr, ptr %.015.i.i.i.i.i.i543, align 8, !tbaa !88
  br label %.loopexit737

.loopexit737:                                     ; preds = %.noexc554, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i550
  %.sroa.06.1.i.i.i.i551 = phi ptr [ %i.aqa, %_ZNKSt10_HashtableIN3ade7details10MetadataIdESt4pairIKS2_St10unique_ptrINS1_8Metadata18MetadataHolderBaseESt14default_deleteIS7_EEESaISB_ENSt8__detail10_Select1stESt8equal_toIS2_ENS6_6IdHashENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS4_m.exit.i.i.i.i.i550 ], [ %.sroa.06.0.i.i.i.i553, %.noexc554 ]
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i551, i64 16
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !97
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.aqe = load i32, ptr %i.aqd, align 8, !tbaa !352
  %i.aqf = icmp eq i32 %i.aqe, 2
  br i1 %i.aqf, label %69, label %76

69:                                               ; preds = %.loopexit737
  %70 = and i32 %.sroa.0644.sroa.8.0, 1
  %.not117 = icmp eq i32 %70, 0
  br i1 %.not117, label %bb.nu, label %bb.nn

bb.nn:                                            ; preds = %69
  %71 = add nsw i32 %.sroa.0644.sroa.8.0, -1
  %72 = and i64 %.sroa.11.0, -4294967296
  %.sroa.11.12.insert.ext = add i64 %72, 4294967296
  %.sroa.11.12.insert.mask = and i64 %.sroa.11.0, 4294967295
  %.sroa.11.12.insert.insert = or disjoint i64 %.sroa.11.12.insert.ext, %.sroa.11.12.insert.mask
  br label %bb.nu

bb.no:                                            ; preds = %bb.lz
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #30
  br label %.body332

bb.np:                                            ; preds = %bb.mj, %bb.mi
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  br label %.body521

.body521:                                         ; preds = %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i515, %bb.np
  %eh.lpad-body522 = phi { ptr, i32 } [ %i.aqh, %bb.np ], [ %i.anm, %_ZN3ade6HandleINS_4EdgeEED2Ev.exit6.i515 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #30
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit562

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nk, %_ZNKSt8__detail15_Hashtable_baseIN3ade7details10MetadataIdESt4pairIKS3_St10unique_ptrINS2_8Metadata18MetadataHolderBaseESt14default_deleteIS8_EEENS_10_Select1stESt8equal_toIS3_ENS7_6IdHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i.i.i.i.i547, %bb.nl
  %lpad.loopexit.split-lp1896 = landingpad { ptr, i32 }
          cleanup
  br label %.body536

.body536:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.nd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i529, %bb.nh
  %eh.lpad-body537 = phi { ptr, i32 } [ %i.aor, %bb.nd ], [ %i.aor, %bb.nh ], [ %i.aor, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6.i529 ], [ %lpad.loopexit.split-lp1896, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.aqi = load ptr, ptr %i.dh, align 8, !tbaa !75 ; 4 uses
  %.not.i.i.i558 = icmp eq ptr %i.aqi, null
  br i1 %.not.i.i.i558, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit562, label %bb.nq

bb.nq:                                            ; preds = %.body536
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 12 ; 3 uses
  %i.aqk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i559 = icmp eq i8 %i.aqk, 0
  br i1 %.not.i.i.i.i559, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.aql = load i32, ptr %i.aqj, align 4, !tbaa !66 ; 2 uses
  %i.aqm = add nsw i32 %i.aql, -1
  store i32 %i.aqm, ptr %i.aqj, align 4, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i560

bb.ns:                                            ; preds = %bb.nq
  %i.aqn = atomicrmw volatile add ptr %i.aqj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i560

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i560: ; preds = %bb.ns, %bb.nr
  %.0.i.i.i.i.i561 = phi i32 [ %i.aql, %bb.nr ], [ %i.aqn, %bb.ns ]
  %i.aqo = icmp eq i32 %.0.i.i.i.i.i561, 1
  br i1 %i.aqo, label %bb.nt, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit562

bb.nt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i560
  %i.aqp = load ptr, ptr %i.aqi, align 8, !tbaa !59
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 24
  %i.aqr = load ptr, ptr %i.aqq, align 8
  call void %i.aqr(ptr noundef nonnull align 8 dereferenceable(16) %i.aqi) #30, !inline_history !8
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit562

bb.nu:                                            ; preds = %bb.nn, %69
  %.sroa.0644.sroa.8.1.a = phi i32 [ %.sroa.0644.sroa.8.0, %69 ], [ %71, %bb.nn ] ; 2 uses
  %.sroa.11.1.a = phi i64 [ %.sroa.11.0, %69 ], [ %.sroa.11.12.insert.insert, %bb.nn ] ; 4 uses
  %73 = and i64 %.sroa.11.1.a, 4294967296
  %.not118 = icmp eq i64 %73, 0
  br i1 %.not118, label %76, label %74

74:                                               ; preds = %bb.nu
  %75 = and i64 %.sroa.11.1.a, -4294967296
  %.sroa.11.12.insert.shift650 = add i64 %75, 4294967296
  %.sroa.11.12.insert.mask651 = and i64 %.sroa.11.1.a, 4294967295
  %.sroa.11.12.insert.insert652 = or disjoint i64 %.sroa.11.12.insert.shift650, %.sroa.11.12.insert.mask651
  br label %76

76:                                               ; preds = %bb.nu, %74, %.loopexit737
  %.sroa.0644.sroa.8.2 = phi i32 [ %.sroa.0644.sroa.8.1.a, %bb.nu ], [ %.sroa.0644.sroa.8.1.a, %74 ], [ %.sroa.0644.sroa.8.0, %.loopexit737 ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1.a, %bb.nu ], [ %.sroa.11.12.insert.insert652, %74 ], [ %.sroa.11.0, %.loopexit737 ]
  %77 = load ptr, ptr %i.dh, align 8, !tbaa !75   ; 4 uses
  %.not.i.i.i563 = icmp eq ptr %77, null
  br i1 %.not.i.i.i563, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit567, label %bb.nv

bb.nv:                                            ; preds = %76
  %i.aqs = getelementptr inbounds nuw i8, ptr %77, i64 12 ; 3 uses
  %i.aqt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i564 = icmp eq i8 %i.aqt, 0
  br i1 %.not.i.i.i.i564, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.aqu = load i32, ptr %i.aqs, align 4, !tbaa !66 ; 2 uses
  %i.aqv = add nsw i32 %i.aqu, -1
  store i32 %i.aqv, ptr %i.aqs, align 4, !tbaa !66
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i565

bb.nx:                                            ; preds = %bb.nv
  %i.aqw = atomicrmw volatile add ptr %i.aqs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i565

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i565: ; preds = %bb.nx, %bb.nw
  %.0.i.i.i.i.i566 = phi i32 [ %i.aqu, %bb.nw ], [ %i.aqw, %bb.nx ]
  %i.aqx = icmp eq i32 %.0.i.i.i.i.i566, 1
  br i1 %i.aqx, label %bb.ny, label %_ZN3ade6HandleINS_4NodeEED2Ev.exit567

bb.ny:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i565
  %i.aqy = load ptr, ptr %77, align 8, !tbaa !59
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 24
  %i.ara = load ptr, ptr %i.aqz, align 8
  call void %i.ara(ptr noundef nonnull align 8 dereferenceable(16) %77) #30, !inline_history !8
  br label %_ZN3ade6HandleINS_4NodeEED2Ev.exit567

_ZN3ade6HandleINS_4NodeEED2Ev.exit567:            ; preds = %76, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i565, %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %bb.nz

_ZN3ade6HandleINS_4NodeEED2Ev.exit562:            ; preds = %bb.nt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i560, %.body536, %.body521
  %.pn115 = phi { ptr, i32 } [ %eh.lpad-body522, %.body521 ], [ %eh.lpad-body537, %.body536 ], [ %eh.lpad-body537, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i560 ], [ %eh.lpad-body537, %bb.nt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #30
  br label %.body332

bb.nz:                                            ; preds = %_ZN3ade6HandleINS_4NodeEED2Ev.exit567, %bb.ma
  %.sroa.0644.sroa.8.3 = phi i32 [ %.sroa.0644.sroa.8.0, %bb.ma ], [ %.sroa.0644.sroa.8.2, %_ZN3ade6HandleINS_4NodeEED2Ev.exit567 ]
  %.sroa.11.3 = phi i64 [ %.sroa.11.0, %bb.ma ], [ %.sroa.11.2, %_ZN3ade6HandleINS_4NodeEED2Ev.exit567 ] ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.abg, i64 20
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !356 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.xo, i64 36
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !226 ; 3 uses
  %.sroa.3.8.extract.trunc.i570 = trunc i64 %.sroa.11.3 to i32 ; 4 uses
  %.sroa.6.8.extract.shift.i = lshr i64 %.sroa.11.3, 32
  %.sroa.6.8.extract.trunc.i571 = trunc nuw i64 %.sroa.6.8.extract.shift.i to i32
  %i.arf = sub nsw i32 %.sroa.0644.sroa.8.3, %i.arc ; 3 uses
  %i.arg = shl nsw i32 %i.arc, 1
  %i.arh = add nsw i32 %i.arg, %.sroa.6.8.extract.trunc.i571 ; 3 uses
  %i.ari = icmp slt i32 %.sroa.3.8.extract.trunc.i570, 1
  %i.arj = icmp slt i32 %i.arh, 1
  %i.ark = select i1 %i.ari, i1 true, i1 %i.arj
  %i.arl = icmp slt i32 %i.are, 1
  %or.cond.i = or i1 %i.arl, %i.ark
  br i1 %or.cond.i, label %bb.od, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.arm = call i32 @llvm.smin.i32(i32 %.sroa.0644.sroa.0.0, i32 0) ; 2 uses
  %i.arn = icmp slt i32 %.sroa.0644.sroa.0.0, 0
  %i.aro = call i32 @llvm.smax.i32(i32 %.sroa.0644.sroa.0.0, i32 0) ; 3 uses
  %i.arp = add nsw i32 %i.arm, %.sroa.3.8.extract.trunc.i570
  %i.arq = icmp slt i32 %i.arp, %i.aro
  %or.cond6.i = select i1 %i.arn, i1 %i.arq, i1 false
  br i1 %or.cond6.i, label %bb.od, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.arr = icmp slt i32 %i.arf, 0
  br i1 %i.arr, label %.cont52.i.i, label %.cont35.i.i

.cont52.i.i:                                      ; preds = %bb.ob
  %i.ars = add nsw i32 %i.arh, %i.arf             ; 2 uses
  %i.art = icmp slt i32 %i.ars, 0
  br i1 %i.art, label %bb.od, label %.cont35.i.i

.cont35.i.i:                                      ; preds = %.cont52.i.i, %bb.ob
  %i.aru = phi i32 [ %i.are, %.cont52.i.i ], [ %i.arh, %bb.ob ]
  %.neg49.pre-phi.i.i.i = phi i32 [ %i.ars, %.cont52.i.i ], [ %i.are, %bb.ob ]
  %i.arv = phi i32 [ 0, %.cont52.i.i ], [ %i.arf, %bb.ob ] ; 2 uses
  %.v.i.i = sub i32 %i.arm, %i.aro
  %i.arw = add i32 %.v.i.i, %.sroa.3.8.extract.trunc.i570
  %.sroa.speculated53.i.i.i = call i32 @llvm.smin.i32(i32 %.sroa.3.8.extract.trunc.i570, i32 %i.arw) ; 2 uses
  %i.arx = sub nsw i32 %.neg49.pre-phi.i.i.i, %i.arv
  %.sroa.speculated.i.i.i = call i32 @llvm.smin.i32(i32 %i.aru, i32 %i.arx) ; 2 uses
  %i.ary = icmp slt i32 %.sroa.speculated53.i.i.i, 1
  %i.arz = icmp slt i32 %.sroa.speculated.i.i.i, 1
  %i.asa = select i1 %i.ary, i1 true, i1 %i.arz
  br i1 %i.asa, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %.cont35.i.i
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %.cont35.i.i, %.cont52.i.i, %bb.oa, %bb.nz
  %.sroa.0.sroa.0.0.i.i = phi i32 [ %i.aro, %.cont35.i.i ], [ 0, %bb.nz ], [ 0, %bb.oc ], [ 0, %bb.oa ], [ 0, %.cont52.i.i ] ; 2 uses
  %.sroa.0.sroa.9.0.i.i = phi i32 [ %i.arv, %.cont35.i.i ], [ 0, %bb.nz ], [ 0, %bb.oc ], [ 0, %bb.oa ], [ 0, %.cont52.i.i ] ; 2 uses
  %.sroa.14.sroa.0.0.i.i = phi i32 [ %.sroa.speculated53.i.i.i, %.cont35.i.i ], [ 0, %bb.nz ], [ 0, %bb.oc ], [ 0, %bb.oa ], [ 0, %.cont52.i.i ] ; 2 uses
  %.sroa.14.sroa.12.0.i.i = phi i32 [ %.sroa.speculated.i.i.i, %.cont35.i.i ], [ 0, %bb.nz ], [ 0, %bb.oc ], [ 0, %bb.oa ], [ 0, %.cont52.i.i ] ; 2 uses
  %.sroa.0.sroa.9.0.insert.ext.i.i = zext nneg i32 %.sroa.0.sroa.9.0.i.i to i64
  %.sroa.0.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.sroa.9.0.insert.ext.i.i, 32
  %.sroa.14.sroa.12.0.insert.ext.i.i = zext nneg i32 %.sroa.14.sroa.12.0.i.i to i64
  %.sroa.14.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.14.sroa.12.0.insert.ext.i.i, 32
  %.sroa.14.sroa.0.0.insert.ext.i.i = zext nneg i32 %.sroa.14.sroa.0.0.i.i to i64
  %.sroa.14.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.14.sroa.12.0.insert.shift.i.i, %.sroa.14.sroa.0.0.insert.ext.i.i
  %i.asb = getelementptr inbounds nuw i8, ptr %i.xo, i64 12
  %i.asc = load i64, ptr %i.cw, align 8, !tbaa !331
  %.not.not.i.i.i572 = icmp eq i64 %i.asc, 0
  %i.asd = load i32, ptr %i.asb, align 4          ; 4 uses
  br i1 %.not.not.i.i.i572, label %.preheader, label %bb.of

.preheader:                                       ; preds = %bb.od, %bb.oe
  %.sroa.06.0.in.i.i.i581 = phi ptr [ %.sroa.06.0.i.i.i582, %bb.oe ], [ %i.cy, %bb.od ]
  %.sroa.06.0.i.i.i582 = load ptr, ptr %.sroa.06.0.in.i.i.i581, align 8, !tbaa !88 ; 4 uses
  %.not.i.i.i583 = icmp eq ptr %.sroa.06.0.i.i.i582, null
  br i1 %.not.i.i.i583, label %.loopexit.i.i579.invoke, label %bb.oe

bb.oe:                                            ; preds = %.preheader
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i582, i64 8
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !66
  %i.asg = icmp eq i32 %i.asd, %i.asf
  br i1 %i.asg, label %.loopexit, label %.preheader, !llvm.loop !14

bb.of:                                            ; preds = %bb.od
  %i.ash = sext i32 %i.asd to i64
  %i.asi = load i64, ptr %i.cx, align 8, !tbaa !332 ; 2 uses
  %i.asj = urem i64 %i.ash, %i.asi                ; 2 uses
  %i.ask = load ptr, ptr %i.cv, align 8, !tbaa !333
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.asj
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i573 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i.i.i573, label %.loopexit.i.i579.invoke, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !88 ; 3 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !66
  %i.asq = icmp eq i32 %i.asd, %i.asp
  br i1 %i.asq, label %.loopexit, label %.lr.ph.i.i.i.i.i574

bb.oh:                                            ; preds = %bb.oi
  %i.asr = icmp eq i32 %i.asd, %i.asu
  br i1 %i.asr, label %.loopexit, label %.lr.ph.i.i.i.i.i574, !llvm.loop !13

.lr.ph.i.i.i.i.i574:                              ; preds = %bb.og, %bb.oh
  %.020.i.i.i.i.i575 = phi ptr [ %i.ass, %bb.oh ], [ %i.asn, %bb.og ]
  %i.ass = load ptr, ptr %.020.i.i.i.i.i575, align 8, !tbaa !88 ; 4 uses
  %.not18.i.i.i.i.i576 = icmp eq ptr %i.ass, null
  br i1 %.not18.i.i.i.i.i576, label %.loopexit.i.i579.invoke, label %bb.oi

bb.oi:                                            ; preds = %.lr.ph.i.i.i.i.i574
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 8
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !66 ; 2 uses
  %i.asv = sext i32 %i.asu to i64
  %i.asw = urem i64 %i.asv, %i.asi
  %.not19.i.i.i.i.i577 = icmp eq i64 %i.asw, %i.asj
  br i1 %.not19.i.i.i.i.i577, label %bb.oh, label %..loopexit_crit_edge21.i.i.i.i.i578, !llvm.loop !13

..loopexit_crit_edge21.i.i.i.i.i578:              ; preds = %bb.io, %bb.oi
  br label %.loopexit.i.i579.invoke, !llvm.loop !13

.loopexit.i.i579.invoke:                          ; preds = %bb.of, %bb.il, %.lr.ph.i.i.i.i.i409, %.preheader1719, %.lr.ph.i.i.i.i.i574, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i578
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.116) #32
          to label %.loopexit.i.i579.cont unwind label %.loopexit.split-lp742.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i.i579.cont:                            ; preds = %.loopexit.i.i579.invoke
  unreachable

.loopexit:                                        ; preds = %bb.oh, %bb.oe, %bb.og
  %.sroa.06.1.i.i.i580 = phi ptr [ %.sroa.06.0.i.i.i582, %bb.oe ], [ %i.asn, %bb.og ], [ %i.ass, %bb.oh ]
  %i.asx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i580, i64 16
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !107 ; 3 uses
  %i.asz = load ptr, ptr %2, align 8, !tbaa !325
  %i.ata = getelementptr inbounds nuw [16 x i8], ptr %i.asz, i64 %i.asy ; 8 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !693 ; 2 uses
  %i.atc = icmp eq i32 %i.atb, 0
  br i1 %i.atc, label %bb.oj, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586.thread

bb.oj:                                            ; preds = %.loopexit
  %i.atd = getelementptr inbounds nuw i8, ptr %i.ata, i64 4
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !694
  %i.atf = icmp eq i32 %i.ate, 0
  br i1 %i.atf, label %bb.ok, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586.thread

bb.ok:                                            ; preds = %bb.oj
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ata, i64 8 ; 2 uses
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !695
  %i.ati = icmp eq i32 %i.ath, 0
  br i1 %i.ati, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586.thread

_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586:         ; preds = %bb.ok
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ata, i64 12
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !696
  %i.atl = icmp eq i32 %i.atk, 0
  br i1 %i.atl, label %bb.ol, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586.thread

bb.ol:                                            ; preds = %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit586
  %i.atm = load ptr, ptr %1, align 8, !tbaa !139
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.atm, i64 %i.asy
  store i32 %.sroa.0644.sroa.8.0, ptr %i.atn, align 4, !tbaa !66
  %.sroa.0635.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.sroa.0.0.i.i to i64
  %.sroa.0635.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.9.0.insert.shift.i.i, %.sroa.0635.sroa.0.0.insert.ext
  store i64 %.sroa.0635.sroa.0.0.insert.insert, ptr %i.ata, align 4, !tbaa !66
  store i64 %.sroa.14.sroa.0.0.insert.insert.i.i, ptr %i.atg, align 4, !tbaa !66
  %i.ato = getelementptr inbounds nuw i8, ptr %i.abg, i64 28
  %i.atp = load i8, ptr %i.ato, align 4, !tbaa !357, !range !131, !noundef !89
  %i.atq = trunc nuw i8 %i.atp to i1
  br i1 %i.atq, label %bb.om, label %_ZNSt5stackIN3ade6HandleINS0_4NodeEEESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit593

bb.om:                                            ; preds = %bb.ol
  %i.atr = load ptr, ptr %i.bw, align 8, !tbaa !342 ; 4 uses
  %i.ats = load ptr, ptr %i.cd, align 8, !tbaa !697
  %i.att = getelementptr inbounds i8, ptr %i.ats, i64 -16
  %.not.i.i587 = icmp eq ptr %i.atr, %i.att
  br i1 %.not.i.i587, label %bb.or, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.atu = load ptr, ptr %i.cr, align 8, !tbaa !75 ; 2 uses
  %i.atv = load <2 x ptr>, ptr %59, align 16, !tbaa !64
  store <2 x ptr> %i.atv, ptr %i.atr, align 8, !tbaa !64
  %.not.i.i.i.i.i.i588 = icmp eq ptr %i.atu, null
  br i1 %.not.i.i.i.i.i.i588, label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i590, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atu, i64 12 ; 3 uses
  %i.atx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i.i.i589 = icmp eq i8 %i.atx, 0
  br i1 %.not.i.i.i.i.i.i.i589, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.aty = load i32, ptr %i.atw, align 4, !tbaa !66
  %i.atz = add nsw i32 %i.aty, 1
  store i32 %i.atz, ptr %i.atw, align 4, !tbaa !66
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i590

bb.oq:                                            ; preds = %bb.oo
  %i.aua = atomicrmw volatile add ptr %i.atw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i591 = load ptr, ptr %i.bw, align 8, !tbaa !342
  br label %_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i590

_ZN3ade6HandleINS_4NodeEEC2ERKS2_.exit.i.i590:    ; preds = %bb.oq, %bb.op, %bb.on
  %i.aub = phi ptr [ %i.atr, %bb.on ], [ %i.atr, %bb.op ], [ %.pre.i.i591, %bb.oq ]
end_hunk_1
