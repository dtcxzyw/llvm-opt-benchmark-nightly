Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CFileList?download=true
inline.NumInlined: 467
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_:bb.a
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !34
  store i8 0, ptr %i.by, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %_ZN2io14SFileListEntryC2EOS0_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !17 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.by
  br i1 %i.cd, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.o
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !18
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #25
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  %i.cg = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bm
  br i1 %i.ch, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %.body.i
  %i.ci = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #25
  br label %common.resume

_ZN2io14SFileListEntryC2EOS0_.exit:               ; preds = %_ZN4core6stringIcEC2ERKS1_.exit.thread.i, %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ck, ptr noundef nonnull align 8 dereferenceable(13) %i.cl, i64 13, i1 false)
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %bb.p
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !18
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #25
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26
  %i.cs = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bm
  br i1 %i.ct, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.cu = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #25
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.q:                                             ; preds = %_ZN2io14SFileListEntryC2EOS0_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2io14SFileListEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2io14SFileListEntryaSEOS0_.exit
  %.020 = phi i64 [ %1, %.lr.ph ], [ %.0921, %_ZN2io14SFileListEntryaSEOS0_.exit ] ; 6 uses
  %.0921.in = add nsw i64 %.020, -1
  %.0921 = sdiv i64 %.0921.in, 2                  ; 5 uses
  %i.e = getelementptr inbounds [80 x i8], ptr %0, i64 %.0921 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.g = load i8, ptr %i.f, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %i.h = load i8, ptr %i.b, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %bb.g, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.n = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %i.r = phi i8 [ %i.l, %.lr.ph.i.i.i ], [ %i.q, %bb.d ]
  %i.s = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.o, %bb.d ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.n, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i8 %i.r to i32                      ; 3 uses
  %i.w = add nsw i32 %i.v, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.w, 26
  %i.x = add nuw nsw i32 %i.v, 32
  %i.y = select i1 %or.cond.i.i.i.i, i32 %i.x, i32 %i.v ; 2 uses
  %i.z = sext i8 %i.u to i32                      ; 3 uses
  %i.aa = add nsw i32 %i.z, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.aa, 26
  %i.ab = add nuw nsw i32 %i.z, 32
  %i.ac = select i1 %or.cond.i22.i.i.i, i32 %i.ab, i32 %i.z ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.y, %i.ac
  br i1 %.not21.i.i.i, label %bb.d, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.f
  %i.ad = icmp slt i32 %i.y, %i.ac
  br i1 %i.ad, label %bb.g, label %.critedge

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !34
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit
  %i.ak = getelementptr inbounds [80 x i8], ptr %0, i64 %.020 ; 3 uses
  %i.al = icmp eq i64 %.020, %.0921
  br i1 %i.al, label %_ZN2io14SFileListEntryaSEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.ak, ptr noundef nonnull align 8 dereferenceable(77) %i.e)
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
  br label %_ZN2io14SFileListEntryaSEOS0_.exit

_ZN2io14SFileListEntryaSEOS0_.exit:               ; preds = %bb.g, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ao, ptr noundef nonnull align 8 dereferenceable(13) %i.ap, i64 13, i1 false)
  %i.aq = icmp sgt i64 %.0921, %2
  br i1 %i.aq, label %bb.b, label %.critedge, !llvm.loop !89

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit, %_ZN2io14SFileListEntryaSEOS0_.exit, %.split, %.critedge.loopexit.i.i.i, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.020, %.critedge.loopexit.i.i.i ], [ %.020, %.split ], [ %.0921, %_ZN2io14SFileListEntryaSEOS0_.exit ], [ %.020, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit ]
  %i.ar = getelementptr inbounds [80 x i8], ptr %0, i64 %.0.lcssa ; 4 uses
  %i.as = icmp eq ptr %i.ar, %3
  br i1 %i.as, label %_ZN2io14SFileListEntryaSEOS0_.exit10, label %bb.i

bb.i:                                             ; preds = %.critedge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.ar, ptr noundef nonnull align 8 dereferenceable(77) %3)
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br label %_ZN2io14SFileListEntryaSEOS0_.exit10

_ZN2io14SFileListEntryaSEOS0_.exit10:             ; preds = %.critedge, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.av, ptr noundef nonnull align 8 dereferenceable(13) %i.aw, i64 13, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.b = load i8, ptr %i.a, align 4, !tbaa !51, !range !44, !noundef !45 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.d = load i8, ptr %i.c, align 4, !tbaa !51, !range !44, !noundef !45 ; 5 uses
  %.not.i.i = icmp eq i8 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = trunc nuw i8 %i.b to i1
  br i1 %i.e, label %bb.f, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.k = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.o = phi i8 [ %i.h, %.lr.ph.i.i.i ], [ %i.n, %bb.c ]
  %i.p = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.l, %bb.c ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.k, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = sext i8 %i.o to i32                      ; 3 uses
  %i.t = add nsw i32 %i.s, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.t, 26
  %i.u = add nuw nsw i32 %i.s, 32
  %i.v = select i1 %or.cond.i.i.i.i, i32 %i.u, i32 %i.s ; 2 uses
  %i.w = sext i8 %i.r to i32                      ; 3 uses
  %i.x = add nsw i32 %i.w, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.x, 26
  %i.y = add nuw nsw i32 %i.w, 32
  %i.z = select i1 %or.cond.i22.i.i.i, i32 %i.y, i32 %i.w ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.v, %i.z
  br i1 %.not21.i.i.i, label %bb.c, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.e
  %i.aa = icmp slt i32 %i.v, %i.z
  br i1 %i.aa, label %bb.f, label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !34
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.q

bb.f:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i26 = icmp eq i8 %i.d, %i.aj
  br i1 %.not.i.i26, label %bb.g, label %.split78

.split78:                                         ; preds = %bb.f
  %i.ak = trunc nuw i8 %i.d to i1
  br i1 %i.ak, label %bb.ab, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i28 = icmp eq i8 %i.an, 0
  br i1 %.not27.i.i.i28, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.aq = add i32 %.01628.i.i.i30, 1              ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i36 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i36, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, label %bb.i, !llvm.loop !3

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i29
  %i.au = phi i8 [ %i.an, %.lr.ph.i.i.i29 ], [ %i.at, %bb.h ]
  %i.av = phi i64 [ 0, %.lr.ph.i.i.i29 ], [ %i.ar, %bb.h ]
  %.01628.i.i.i30 = phi i32 [ 0, %.lr.ph.i.i.i29 ], [ %i.aq, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i31 = icmp eq i8 %i.ax, 0
  br i1 %.not20.i.i.i31, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sext i8 %i.au to i32                    ; 3 uses
  %i.az = add nsw i32 %i.ay, -65
  %or.cond.i.i.i.i32 = icmp ult i32 %i.az, 26
  %i.ba = add nuw nsw i32 %i.ay, 32
  %i.bb = select i1 %or.cond.i.i.i.i32, i32 %i.ba, i32 %i.ay ; 2 uses
  %i.bc = sext i8 %i.ax to i32                    ; 3 uses
  %i.bd = add nsw i32 %i.bc, -65
  %or.cond.i22.i.i.i33 = icmp ult i32 %i.bd, 26
  %i.be = add nuw nsw i32 %i.bc, 32
  %i.bf = select i1 %or.cond.i22.i.i.i33, i32 %i.be, i32 %i.bc ; 2 uses
  %.not21.i.i.i34 = icmp eq i32 %i.bb, %i.bf
  br i1 %.not21.i.i.i34, label %bb.h, label %.critedge.loopexit.i.i.i35

.critedge.loopexit.i.i.i35:                       ; preds = %bb.j
  %i.bg = icmp slt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.ab, label %bb.k

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38: ; preds = %bb.h, %bb.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !34
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !34
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp ult i32 %i.bj, %i.bm
  br i1 %i.bn, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %.critedge.loopexit.i.i.i35, %.split78, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38
  %.not.i.i39 = icmp eq i8 %i.b, %i.aj
  br i1 %.not.i.i39, label %bb.l, label %.split79

.split79:                                         ; preds = %bb.k
  %i.bo = trunc nuw i8 %i.b to i1
  br i1 %i.bo, label %bb.ab, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !17 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i41 = icmp eq i8 %i.br, 0
  br i1 %.not27.i.i.i41, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %i.bu = add i32 %.01628.i.i.i43, 1              ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i49 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i49, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, label %bb.n, !llvm.loop !3

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i42
  %i.by = phi i8 [ %i.br, %.lr.ph.i.i.i42 ], [ %i.bx, %bb.m ]
  %i.bz = phi i64 [ 0, %.lr.ph.i.i.i42 ], [ %i.bv, %bb.m ]
  %.01628.i.i.i43 = phi i32 [ 0, %.lr.ph.i.i.i42 ], [ %i.bu, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i44 = icmp eq i8 %i.cb, 0
  br i1 %.not20.i.i.i44, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = sext i8 %i.by to i32                    ; 3 uses
  %i.cd = add nsw i32 %i.cc, -65
  %or.cond.i.i.i.i45 = icmp ult i32 %i.cd, 26
  %i.ce = add nuw nsw i32 %i.cc, 32
  %i.cf = select i1 %or.cond.i.i.i.i45, i32 %i.ce, i32 %i.cc ; 2 uses
  %i.cg = sext i8 %i.cb to i32                    ; 3 uses
  %i.ch = add nsw i32 %i.cg, -65
  %or.cond.i22.i.i.i46 = icmp ult i32 %i.ch, 26
  %i.ci = add nuw nsw i32 %i.cg, 32
  %i.cj = select i1 %or.cond.i22.i.i.i46, i32 %i.ci, i32 %i.cg ; 2 uses
  %.not21.i.i.i47 = icmp eq i32 %i.cf, %i.cj
  br i1 %.not21.i.i.i47, label %bb.m, label %.critedge.loopexit.i.i.i48

.critedge.loopexit.i.i.i48:                       ; preds = %bb.o
  %i.ck = icmp slt i32 %i.cf, %i.cj
  br i1 %i.ck, label %bb.ab, label %bb.p

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51: ; preds = %bb.m, %bb.n, %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !34
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !34
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp ult i32 %i.cn, %i.cq
  br i1 %i.cr, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %.critedge.loopexit.i.i.i48, %.split79, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51
  br label %bb.ab

bb.q:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i52 = icmp eq i8 %i.b, %i.ct
  br i1 %.not.i.i52, label %bb.r, label %.split80.a

.split80.a:                                       ; preds = %bb.q
  %4 = trunc nuw i8 %i.b to i1
  br i1 %4, label %bb.ab, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i54 = icmp eq i8 %i.cw, 0
  br i1 %.not27.i.i.i54, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !17
  br label %bb.t

bb.s:                                             ; preds = %bb.u
  %i.cz = add i32 %.01628.i.i.i56, 1              ; 2 uses
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i62 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i62, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, label %bb.t, !llvm.loop !3

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i55
  %i.dd = phi i8 [ %i.cw, %.lr.ph.i.i.i55 ], [ %i.dc, %bb.s ]
  %i.de = phi i64 [ 0, %.lr.ph.i.i.i55 ], [ %i.da, %bb.s ]
  %.01628.i.i.i56 = phi i32 [ 0, %.lr.ph.i.i.i55 ], [ %i.cz, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i57 = icmp eq i8 %i.dg, 0
  br i1 %.not20.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = sext i8 %i.dd to i32                    ; 3 uses
  %i.di = add nsw i32 %i.dh, -65
  %or.cond.i.i.i.i58 = icmp ult i32 %i.di, 26
  %i.dj = add nuw nsw i32 %i.dh, 32
  %i.dk = select i1 %or.cond.i.i.i.i58, i32 %i.dj, i32 %i.dh ; 2 uses
  %i.dl = sext i8 %i.dg to i32                    ; 3 uses
  %i.dm = add nsw i32 %i.dl, -65
  %or.cond.i22.i.i.i59 = icmp ult i32 %i.dm, 26
  %i.dn = add nuw nsw i32 %i.dl, 32
  %i.do = select i1 %or.cond.i22.i.i.i59, i32 %i.dn, i32 %i.dl ; 2 uses
  %.not21.i.i.i60 = icmp eq i32 %i.dk, %i.do
  br i1 %.not21.i.i.i60, label %bb.s, label %.critedge.loopexit.i.i.i61

.critedge.loopexit.i.i.i61:                       ; preds = %bb.u
  %i.dp = icmp slt i32 %i.dk, %i.do
  br i1 %i.dp, label %bb.ab, label %bb.v

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64: ; preds = %bb.s, %bb.t, %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !34
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !34
  %i.dv = trunc i64 %i.du to i32
  %i.dw = icmp ult i32 %i.ds, %i.dv
  br i1 %i.dw, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %.critedge.loopexit.i.i.i61, %.split80.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64
  %.not.i.i65 = icmp eq i8 %i.d, %i.ct
  br i1 %.not.i.i65, label %bb.w, label %.split81

.split81:                                         ; preds = %bb.v
  %i.dx = trunc nuw i8 %i.d to i1
  br i1 %i.dx, label %bb.ab, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !17 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i67 = icmp eq i8 %i.ea, 0
  br i1 %.not27.i.i.i67, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !17
  br label %bb.y

bb.x:                                             ; preds = %bb.z
  %i.ed = add i32 %.01628.i.i.i69, 1              ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i75 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i75, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, label %bb.y, !llvm.loop !3

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.i68
  %i.eh = phi i8 [ %i.ea, %.lr.ph.i.i.i68 ], [ %i.eg, %bb.x ]
  %i.ei = phi i64 [ 0, %.lr.ph.i.i.i68 ], [ %i.ee, %bb.x ]
  %.01628.i.i.i69 = phi i32 [ 0, %.lr.ph.i.i.i68 ], [ %i.ed, %bb.x ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i70 = icmp eq i8 %i.ek, 0
  br i1 %.not20.i.i.i70, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = sext i8 %i.eh to i32                    ; 3 uses
  %i.em = add nsw i32 %i.el, -65
  %or.cond.i.i.i.i71 = icmp ult i32 %i.em, 26
  %i.en = add nuw nsw i32 %i.el, 32
  %i.eo = select i1 %or.cond.i.i.i.i71, i32 %i.en, i32 %i.el ; 2 uses
  %i.ep = sext i8 %i.ek to i32                    ; 3 uses
  %i.eq = add nsw i32 %i.ep, -65
  %or.cond.i22.i.i.i72 = icmp ult i32 %i.eq, 26
  %i.er = add nuw nsw i32 %i.ep, 32
  %i.es = select i1 %or.cond.i22.i.i.i72, i32 %i.er, i32 %i.ep ; 2 uses
  %.not21.i.i.i73 = icmp eq i32 %i.eo, %i.es
  br i1 %.not21.i.i.i73, label %bb.x, label %.critedge.loopexit.i.i.i74

.critedge.loopexit.i.i.i74:                       ; preds = %bb.z
  %i.et = icmp slt i32 %i.eo, %i.es
  br i1 %i.et, label %bb.ab, label %bb.aa

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77: ; preds = %bb.x, %bb.y, %bb.w
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !34
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !34
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = icmp ult i32 %i.ew, %i.ez
  br i1 %i.fa, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.loopexit.i.i.i74, %.split81, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77, %.split81, %.critedge.loopexit.i.i.i74, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64, %.split80.a, %.critedge.loopexit.i.i.i61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51, %.split79, %.critedge.loopexit.i.i.i48, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38, %.split78, %.critedge.loopexit.i.i.i35, %bb.aa, %bb.p
  %.sink = phi ptr [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit51 ], [ %2, %bb.aa ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit64 ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit38 ], [ %1, %bb.p ], [ %2, %.critedge.loopexit.i.i.i35 ], [ %2, %.split78 ], [ %3, %.critedge.loopexit.i.i.i48 ], [ %3, %.split79 ], [ %1, %.critedge.loopexit.i.i.i61 ], [ %1, %.split80.a ], [ %3, %.critedge.loopexit.i.i.i74 ], [ %3, %.split81 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit77 ]
  tail call void @_ZSt4swapIN2io14SFileListEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %.sink)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.sroa.023.0 = phi ptr [ %0, %bb.a ], [ %i.bo, %bb.q ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.q ]
  %i.d = load i8, ptr %i.a, align 4, !tbaa !51, !range !44, !noundef !45 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.sroa.023.1 = phi ptr [ %.sroa.023.0, %bb.b ], [ %i.ai, %bb.h ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 76
  %i.f = load i8, ptr %i.e, align 4, !tbaa !51, !range !44, !noundef !45 ; 2 uses
  %.not.i.i = icmp eq i8 %i.f, %i.d
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18    ; 2 uses
  %.not27.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not27.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.l = add i32 %.01628.i.i.i, 1                 ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.p = phi i8 [ %i.j, %.lr.ph.i.i.i ], [ %i.o, %bb.e ]
  %i.q = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.e ]
  %.01628.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.l, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18    ; 2 uses
  %.not20.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not20.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = sext i8 %i.p to i32                      ; 3 uses
  %i.u = add nsw i32 %i.t, -65
  %or.cond.i.i.i.i = icmp ult i32 %i.u, 26
  %i.v = add nuw nsw i32 %i.t, 32
  %i.w = select i1 %or.cond.i.i.i.i, i32 %i.v, i32 %i.t ; 2 uses
  %i.x = sext i8 %i.s to i32                      ; 3 uses
  %i.y = add nsw i32 %i.x, -65
  %or.cond.i22.i.i.i = icmp ult i32 %i.y, 26
  %i.z = add nuw nsw i32 %i.x, 32
  %i.aa = select i1 %or.cond.i22.i.i.i, i32 %i.z, i32 %i.x ; 2 uses
  %.not21.i.i.i = icmp eq i32 %i.w, %i.aa
  br i1 %.not21.i.i.i, label %bb.e, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.g
  %i.ab = icmp slt i32 %i.w, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ae = trunc i64 %i.ad to i32
  %i.af = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ult i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 80
  br label %bb.c, !llvm.loop !90

bb.i:                                             ; preds = %.critedge.loopexit.i.i.i, %.split, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.aj = trunc nuw i8 %i.d to i1
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %bb.i ], [ %.sroa.0.1, %.backedge ] ; 4 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -80 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -4
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !51, !range !44, !noundef !45
  %.not.i.i8 = icmp eq i8 %i.d, %i.al
  br i1 %.not.i.i8, label %bb.k, label %.split26

.split26:                                         ; preds = %bb.j
  br i1 %i.aj, label %.backedge, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18  ; 2 uses
  %.not27.i.i.i10 = icmp eq i8 %i.an, 0
  br i1 %.not27.i.i.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %bb.k
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.n
  %i.aq = add i32 %.01628.i.i.i12, 1              ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 2 uses
  %.not.i.i.i18 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i18, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20, label %bb.m, !llvm.loop !3

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i11
  %i.au = phi i8 [ %i.an, %.lr.ph.i.i.i11 ], [ %i.at, %bb.l ]
  %i.av = phi i64 [ 0, %.lr.ph.i.i.i11 ], [ %i.ar, %bb.l ]
  %.01628.i.i.i12 = phi i32 [ 0, %.lr.ph.i.i.i11 ], [ %i.aq, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18  ; 2 uses
  %.not20.i.i.i13 = icmp eq i8 %i.ax, 0
  br i1 %.not20.i.i.i13, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = sext i8 %i.au to i32                    ; 3 uses
  %i.az = add nsw i32 %i.ay, -65
  %or.cond.i.i.i.i14 = icmp ult i32 %i.az, 26
  %i.ba = add nuw nsw i32 %i.ay, 32
  %i.bb = select i1 %or.cond.i.i.i.i14, i32 %i.ba, i32 %i.ay ; 2 uses
  %i.bc = sext i8 %i.ax to i32                    ; 3 uses
  %i.bd = add nsw i32 %i.bc, -65
  %or.cond.i22.i.i.i15 = icmp ult i32 %i.bd, 26
  %i.be = add nuw nsw i32 %i.bc, 32
  %i.bf = select i1 %or.cond.i22.i.i.i15, i32 %i.be, i32 %i.bc ; 2 uses
  %.not21.i.i.i16 = icmp eq i32 %i.bb, %i.bf
  br i1 %.not21.i.i.i16, label %bb.l, label %.critedge.loopexit.i.i.i17

.critedge.loopexit.i.i.i17:                       ; preds = %bb.n
  %i.bg = icmp slt i32 %i.bb, %i.bf
  br i1 %i.bg, label %.backedge, label %bb.o

.backedge:                                        ; preds = %.critedge.loopexit.i.i.i17, %.split26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20
  br label %bb.j, !llvm.loop !91

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20: ; preds = %bb.l, %bb.m, %bb.k
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !34
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !34
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ult i32 %i.bi, %i.bl
  br i1 %i.bm, label %.backedge, label %bb.o

bb.o:                                             ; preds = %.critedge.loopexit.i.i.i17, %.split26, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN2io14SFileListEntryESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit20
  %i.bn = icmp ult ptr %.sroa.023.1, %.sroa.0.1
  br i1 %i.bn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  ret ptr %.sroa.023.1

bb.q:                                             ; preds = %bb.o
  tail call void @_ZSt4swapIN2io14SFileListEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(77) %.sroa.023.1, ptr noundef nonnull align 8 dereferenceable(77) %.sroa.0.1)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.023.1, i64 80
  br label %bb.b, !llvm.loop !92
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt4swapIN2io14SFileListEntryEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.io::SFileListEntry", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(77) %2, ptr noundef nonnull align 8 dereferenceable(77) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

end_hunk_0
