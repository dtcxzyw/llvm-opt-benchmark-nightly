Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/permute_layer?download=true
inline.NumInlined: 874
inline.NumDeleted: 296
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv:bb.a
  br label %_ZN2cv10AutoBufferIlLm1EED2Ev.exit

_ZN2cv10AutoBufferIlLm1EED2Ev.exit:               ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 24) #19
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !79   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i3, label %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.o, 5                     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.r = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.q, %.preheader.preheader.i.i ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !49
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = icmp eq ptr %i.s, %i.k
  br i1 %i.y, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %i.z = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.n, i64 noundef %i.z) #19
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i.i, %bb.g
  store ptr %i.l, ptr %i.i, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.aa, align 8, !tbaa !82
  br label %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i

_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #19
  br label %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit

_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit: ; preds = %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EE10deallocateEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 48) #19
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !86 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.not.i.i4 = icmp eq ptr %i.aj, %i.ak
  %i.al = icmp eq ptr %i.aj, null
  %or.cond.i5 = or i1 %.not.i.i4, %i.al
  br i1 %or.cond.i5, label %_ZN2cv10AutoBufferIdLm1EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #19
  br label %_ZN2cv10AutoBufferIdLm1EED2Ev.exit

_ZN2cv10AutoBufferIdLm1EED2Ev.exit:               ; preds = %bb.k, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 24) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_ZN2cv10AutoBufferIdLm1EED2Ev.exit, %bb.e, %_ZN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EED2Ev.exit, %bb.b, %_ZN2cv10AutoBufferIlLm1EED2Ev.exit, %bb.a
  ret void
}

declare void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16PermuteLayerImpl14computeStridesERKNS_8MatShapeES4_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.l)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.c, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !66
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.o = phi i64 [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !67   ; 5 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 3 uses
  %i.x = icmp ugt i64 %i.o, %i.w
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.y = sub nuw i64 %i.o, %i.w
  tail call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.y)
  %.pre24 = load i64, ptr %i.b, align 8, !tbaa !16
  %.pre25 = load ptr, ptr %i.p, align 8, !tbaa !67
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit13

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.z = icmp ult i64 %i.o, %i.w
  br i1 %i.z, label %bb.g, label %_ZNSt6vectorImSaImEE6resizeEm.exit13

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.o ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.r, %i.aa
  br i1 %.not.i.i11, label %_ZNSt6vectorImSaImEE6resizeEm.exit13, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %bb.g
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !66
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit13

_ZNSt6vectorImSaImEE6resizeEm.exit13:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12
  %i.ab = phi ptr [ %.pre25, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.s, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12 ] ; 3 uses
  %i.ac = phi i64 [ %.pre24, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.o, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i12 ]
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !67  ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  store i64 1, ptr %i.af, align 8, !tbaa !62
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ah = getelementptr [8 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  store i64 1, ptr %i.ai, align 8, !tbaa !62
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = add i32 %i.ak, -2                       ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit13
  %i.an = load i32, ptr %1, align 4, !tbaa !126
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = add i32 %i.ak, -1
  %i.ar = icmp slt i32 %i.aq, %i.an
  br i1 %i.ar, label %.lr.ph.split, label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph
  %7 = zext nneg i32 %i.al to i64
  %.pre26 = load i32, ptr %2, align 4, !tbaa !126
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit21, %_ZNSt6vectorImSaImEE6resizeEm.exit13
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !127
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.as, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !141
  ret void

bb.h:                                             ; preds = %.lr.ph.split, %_ZNK2cv8MatShapeixEm.exit21
  %indvars.iv = phi i64 [ %7, %.lr.ph.split ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit21 ] ; 5 uses
  %i.ay = add nuw nsw i64 %indvars.iv, 1          ; 5 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ay
  %9 = load i64, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ay
  %11 = load i32, ptr %10, align 4, !tbaa !127
  %12 = sext i32 %11 to i64
  %13 = mul i64 %9, %12
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store i64 %13, ptr %14, align 8, !tbaa !62
  %15 = trunc nuw i64 %i.ay to i32
  %16 = icmp sgt i32 %.pre26, %15
  br i1 %16, label %_ZNK2cv8MatShapeixEm.exit21, label %bb.l

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 103) #21
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !49
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.21, i32 noundef 103) #21
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.n
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !49
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit21:                      ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ay
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !127
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !62
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bs = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bs, label %bb.h, label %._crit_edge, !llvm.loop !142
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !108

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
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
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !66
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #21
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #18 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !62
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !62
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #19
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #6

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16PermuteLayerImpl12forward_implIfEEvRKNS_3MatERS3_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = load i32, ptr %1, align 8, !tbaa !119
  %i.h = and i32 %i.g, 16384
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %2, align 8, !tbaa !119
  %i.j = and i32 %i.i, 16384
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv3dnn16PermuteLayerImpl12forward_implIfEEvRKNS_3MatERS3_, ptr noundef nonnull @.str.2, i32 noundef 432) #21
          to label %bb.d unwind label %bb.e
end_hunk_0
