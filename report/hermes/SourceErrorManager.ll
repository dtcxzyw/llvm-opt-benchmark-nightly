Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SourceErrorManager?download=true
inline.NumInlined: 1564
inline.NumDeleted: 774
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_SE_T0_":bb.a
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !107
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !83
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !84
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !84
  %i.cd = load i64, ptr %i.bq, align 8, !tbaa !107
  store i64 %i.cd, ptr %i.bn, align 8, !tbaa !107
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.ce = load i64, ptr %i.bn, align 8, !tbaa !107
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !83
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !84
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !84
  %i.ci = load i64, ptr %i.bq, align 8, !tbaa !107
  store i64 %i.ci, ptr %i.bn, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !83
  store i64 %i.ce, ptr %i.bq, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i
  %i.cj = phi ptr [ %i.bm, %bb.g ], [ %i.bq, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.ck, align 8, !tbaa !84
  store i8 0, ptr %i.cj, align 1, !tbaa !107
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.cn = load i64, ptr %i.cm, align 8
  store i64 %i.cn, ptr %i.cl, align 8
  %i.co = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cp = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !325

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit.i.i.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 32, i1 false)
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !83  ; 6 uses
  %i.cr = icmp eq ptr %i.cq, %i.j
  %i.cs = load ptr, ptr %i.e, align 8, !tbaa !83  ; 6 uses
  %i.ct = icmp eq ptr %i.cs, %i.f                 ; 2 uses
  %.pre26 = load i64, ptr %i.g, align 8, !tbaa !84 ; 5 uses
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  br i1 %i.ct, label %bb.i, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  br i1 %i.ct, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.cu = icmp ult i64 %.pre26, 16
  call void @llvm.assume(i1 %i.cu)
  br i1 %.not21.i.i.i, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, label %bb.j, !prof !152

bb.j:                                             ; preds = %bb.i
  switch i64 %.pre26, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cv = load i8, ptr %i.cs, align 1, !tbaa !107
  store i8 %i.cv, ptr %i.cq, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cs, i64 %.pre26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !84  ; 2 uses
  store i64 %i.cw, ptr %i.c, align 8, !tbaa !84
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !107
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !83
  store i64 %.pre26, ptr %i.c, align 8, !tbaa !84
  %i.cz = load i64, ptr %i.f, align 8, !tbaa !107
  store i64 %i.cz, ptr %i.j, align 8, !tbaa !107
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.da = load i64, ptr %i.j, align 8, !tbaa !107
  store ptr %i.cs, ptr %i.d, align 8, !tbaa !83
  store i64 %.pre26, ptr %i.c, align 8, !tbaa !84
  %i.db = load i64, ptr %i.f, align 8, !tbaa !107
  store i64 %i.db, ptr %i.j, align 8, !tbaa !107
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !83
  store i64 %i.da, ptr %i.f, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.f, ptr %i.e, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.m, %bb.n
  %i.dc = phi ptr [ %i.cq, %bb.m ], [ %i.f, %bb.n ], [ %i.cs, %bb.i ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.g, align 8, !tbaa !84
  store i8 0, ptr %i.dc, align 1, !tbaa !107
  %i.dd = load i64, ptr %i.h, align 8
  store i64 %i.dd, ptr %i.k, align 8
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !83  ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.f
  br i1 %i.df, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit
  %i.dg = load i64, ptr %i.f, align 8, !tbaa !107
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.o

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit"
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.025)
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS_17__normal_iteratorIPNS3_15BufferedMessageESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread20"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !326

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6hermes18SourceErrorManager15BufferedMessageESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16disableBufferingEvE3$_0EEEvT_T0_"(ptr %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.hermes::SourceErrorManager::BufferedMessage", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 11 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !108
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !84   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !83
  %i.k = load i64, ptr %i.e, align 8, !tbaa !107
  store i64 %i.k, ptr %i.c, align 8, !tbaa !107
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !84
  store ptr %i.e, ptr %i.b, align 8, !tbaa !83
  store i64 0, ptr %i.m, align 8, !tbaa !84
  store i8 0, ptr %i.e, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit
  %i.s = phi i64 [ %i.l, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit ], [ %.pre21, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ] ; 6 uses
  %.sroa.015.0 = phi ptr [ %0, %_ZN6hermes18SourceErrorManager15BufferedMessageC2EOS1_.exit ], [ %.sroa.0.0, %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit ] ; 22 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -72 ; 3 uses
  %i.t = load i32, ptr %1, align 8, !tbaa !116
  %i.u = icmp eq i32 %i.t, 0
  %i.v = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %or.cond.not15.i.i = select i1 %i.u, i1 %i.w, i1 false
  %i.x = icmp eq i64 %i.s, 23
  %or.cond10.i.i = select i1 %or.cond.not15.i.i, i1 %i.x, i1 false
  br i1 %or.cond10.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i: ; preds = %bb.c
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.z = load i128, ptr %i.y, align 1
  %i.aa = xor i128 %i.z, 43134731028289254705102659877621165940
  %i.ab = getelementptr i8, ptr %i.y, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 133449583543812656632503265877593235577
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19", label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %bb.c
  %i.ai = load i32, ptr %.sroa.0.0, align 8, !tbaa !116
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -64
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %or.cond7.not17.i.i = select i1 %i.aj, i1 %i.am, i1 false
  %i.an = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -32 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 23
  %or.cond13.i.i = select i1 %or.cond7.not17.i.i, i1 %i.ap, i1 false
  br i1 %or.cond13.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %i.aq = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83 ; 2 uses
  %i.as = load i128, ptr %i.ar, align 1
  %i.at = xor i128 %i.as, 43134731028289254705102659877621165940
  %i.au = getelementptr i8, ptr %i.ar, i64 7
  %i.av = load i128, ptr %i.au, align 1
  %i.aw = xor i128 %i.av, 133449583543812656632503265877593235577
  %i.ax = or i128 %i.at, %i.aw
  %i.ay = icmp ne i128 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1.i.i
  %.old = icmp ult ptr %i.v, %i.al
  br i1 %.old, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.0, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 32 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -40 ; 4 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !83 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 4 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !83 ; 5 uses
  %i.bh = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -24 ; 6 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh                ; 2 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread"
  br i1 %i.bi, label %bb.d, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread"
  br i1 %i.bi, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bj = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.ao, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !107
  store i8 %i.bk, ptr %i.bd, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bg, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !84 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !84
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !107
  %.pre.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !83
  store i64 %i.ao, ptr %i.bp, align 8, !tbaa !84
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !107
  store i64 %i.bq, ptr %i.be, align 8, !tbaa !107
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.br = load i64, ptr %i.be, align 8, !tbaa !107
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !83
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.ao, ptr %i.bs, align 8, !tbaa !84
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !107
  store i64 %i.bt, ptr %i.be, align 8, !tbaa !107
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !83
  store i64 %i.br, ptr %i.bh, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g, %bb.h
  %i.bu = phi ptr [ %i.bd, %bb.g ], [ %i.bh, %bb.h ], [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.an, align 8, !tbaa !84
  store i8 0, ptr %i.bu, align 1, !tbaa !107
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  %i.bw = getelementptr inbounds i8, ptr %.sroa.015.0, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8
  store i64 %i.bx, ptr %i.bv, align 8
  %.pre21 = load i64, ptr %i.n, align 8
  br label %bb.c, !llvm.loop !327

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19": ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit10.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 32 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !83  ; 6 uses
  %i.cd = icmp eq ptr %i.cc, %i.c                 ; 2 uses
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"
  br i1 %i.cd, label %bb.i, label %.thread.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes18SourceErrorManager16disableBufferingEvE3$_0EclINS3_15BufferedMessageENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread19"
  br i1 %i.cd, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ce = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.ce)
  %.not21.i.i.i5 = icmp eq ptr %1, %.sroa.015.0
  br i1 %.not21.i.i.i5, label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10, label %bb.j, !prof !152

bb.j:                                             ; preds = %bb.i
  switch i64 %i.s, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !107
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.cc, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6: ; preds = %bb.l, %bb.k, %bb.j
  %i.cg = load i64, ptr %i.n, align 8, !tbaa !84  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !84
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !83
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !107
  %.pre.i.i.i7 = load ptr, ptr %i.a, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

.thread.i.i.i9:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !83
  store i64 %i.s, ptr %i.ck, align 8, !tbaa !84
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !107
  store i64 %i.cl, ptr %i.ca, align 8, !tbaa !107
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i2
  %i.cm = load i64, ptr %i.ca, align 8, !tbaa !107
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 40
  store i64 %i.s, ptr %i.cn, align 8, !tbaa !84
  %i.co = load i64, ptr %i.c, align 8, !tbaa !107
  store i64 %i.co, ptr %i.ca, align 8, !tbaa !107
  %.not.i.i.i4 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !83
  store i64 %i.cm, ptr %i.c, align 8, !tbaa !107
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i3, %.thread.i.i.i9
  store ptr %i.c, ptr %i.a, align 8, !tbaa !83
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10

_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6, %bb.m, %bb.n
  %i.cp = phi ptr [ %i.bz, %bb.m ], [ %i.c, %bb.n ], [ %i.cc, %bb.i ], [ %.pre.i.i.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i6 ]
  store i64 0, ptr %i.n, align 8, !tbaa !84
  store i8 0, ptr %i.cp, align 1, !tbaa !107
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  %i.cr = load i64, ptr %i.o, align 8
  store i64 %i.cr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.c
  br i1 %i.ct, label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !107
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #25
  br label %_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit

_ZN6hermes18SourceErrorManager11MessageDataD2Ev.exit: ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageaSEOS1_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE17_M_realloc_insertIJRNS1_8DiagKindERN4llvh5SMLocERNS8_7SMRangeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !123    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !111
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !117
  store i32 %i.r, ptr %i.q, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.s, align 8, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load <2 x ptr>, ptr %4, align 8, !tbaa !117
  store <2 x ptr> %i.u, ptr %i.t, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !108
  %i.x = load ptr, ptr %5, align 8, !tbaa !83     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !84 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE12_M_check_lenEmPKc.exit
  store ptr %i.x, ptr %i.v, align 8, !tbaa !83
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !107
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !107
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !84
  store ptr %i.y, ptr %5, align 8, !tbaa !83
  store i64 0, ptr %i.ag, align 8, !tbaa !84
  store i8 0, ptr %i.y, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 0, ptr %i.ai, align 8, !tbaa !119
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 32, i1 false), !alias.scope !337
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !108, !alias.scope !335, !noalias !336
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !83, !alias.scope !336, !noalias !335 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !84, !alias.scope !336, !noalias !335 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !337
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !83, !alias.scope !335, !noalias !336
  %i.at = load i64, ptr %i.an, align 8, !tbaa !107, !alias.scope !336, !noalias !335
  store i64 %i.at, ptr %i.al, align 8, !tbaa !107, !alias.scope !335, !noalias !336
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !84, !alias.scope !336, !noalias !335
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.au = phi i64 [ %i.aq, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !84, !alias.scope !335, !noalias !336
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !83, !alias.scope !336, !noalias !335
  store i64 0, ptr %i.av, align 8, !tbaa !84, !alias.scope !336, !noalias !335
  store i8 0, ptr %i.an, align 8, !tbaa !107, !alias.scope !336, !noalias !335
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !336, !noalias !335
  store i64 %i.az, ptr %i.ax, align 8, !alias.scope !335, !noalias !336
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !331

_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN6hermes18SourceErrorManager15BufferedMessageCI2NS0_11MessageDataEENS0_8DiagKindEN4llvh5SMLocENS3_7SMRangeEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i19, label %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit29, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26
  %.012.i.i.i21 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %i.bc, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i22 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26 ], [ %1, %_ZNSt6vectorIN6hermes18SourceErrorManager15BufferedMessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i21, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i22, i64 32, i1 false), !alias.scope !340
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i21, i64 48 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !108, !alias.scope !338, !noalias !339
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !83, !alias.scope !339, !noalias !338 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 48 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23

bb.e:                                             ; preds = %.lr.ph.i.i.i20
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !84, !alias.scope !339, !noalias !338 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23: ; preds = %.lr.ph.i.i.i20
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !83, !alias.scope !338, !noalias !339
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !107, !alias.scope !339, !noalias !338
  store i64 %i.bn, ptr %i.bf, align 8, !tbaa !107, !alias.scope !338, !noalias !339
  %.phi.trans.insert.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i22, i64 40
  %.pre.i.i.i.i25 = load i64, ptr %.phi.trans.insert.i.i.i.i24, align 8, !tbaa !84, !alias.scope !339, !noalias !338
  br label %_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26

_ZSt19__relocate_object_aIN6hermes18SourceErrorManager15BufferedMessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i23, %bb.e
end_hunk_0
