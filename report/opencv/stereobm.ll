inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt, ptr noundef nonnull @.str.33, i32 noundef 71) #23
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.r:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %8, align 8, !tbaa !57     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.r
  %i.v = load i64, ptr %i.t, align 8, !tbaa !45
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.q
  %.pn25 = phi { ptr, i32 } [ %i.q, %bb.q ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.r, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ag

bb.s:                                             ; preds = %bb.m
  %i.x = tail call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %3)
  %i.y = icmp samesign ult i16 %i.x, 2
  br i1 %i.y, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt, ptr noundef nonnull @.str.33, i32 noundef 73) #23
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.x:                                             ; preds = %bb.u
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %10, align 8, !tbaa !57   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.x
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.w
  %.pn27 = phi { ptr, i32 } [ %i.z, %bb.w ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.aa, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ag

bb.y:                                             ; preds = %bb.s
  tail call void @_ZN2cv5utils10BufferArea9allocate_EPPvtmt(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %1, i16 noundef zeroext 1, i64 noundef %2, i16 noundef zeroext %3)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !151, !range !159, !noundef !160
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.aj = load ptr, ptr %1, align 8, !tbaa !46
  %.not29 = icmp eq ptr %i.aj, null
  br i1 %.not29, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv5utils10BufferArea8allocateIiEEvRPT_mt, ptr noundef nonnull @.str.33, i32 noundef 78) #23
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.ae:                                            ; preds = %bb.ab
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %12, align 8, !tbaa !57   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ae
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !45
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.ad
  %.pn30 = phi { ptr, i32 } [ %i.ak, %bb.ad ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.al, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %bb.y
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  resume { ptr, i32 } %.pn30.pn
}

declare void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nounwind
declare void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

declare void @_ZN2cv5utils10BufferArea9allocate_EPPvtmt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, i16 noundef zeroext, i64 noundef, i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv16PrefilterInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv16PrefilterInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca [2304 x i8], align 16             ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.b = alloca [2816 x i8], align 16             ; 6 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !102    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !104
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = sext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.u, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !161, !nonnull !160, !align !163 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109  ; 6 uses
  br i1 %i.o, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32   ; 4 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !164, !nonnull !160, !align !165
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131 ; 4 uses
  %i.ab = sdiv i32 %i.u, 2                        ; 12 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 6 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.aa, i64 %i.ad ; 34 uses
  %i.af = mul nsw i32 %i.u, %i.u
  %i.ag = lshr i32 %i.af, 3                       ; 3 uses
  %i.ah = add nuw nsw i32 %i.ag, 1024
  %i.ai = shl nuw nsw i32 %i.ag, 1
  %i.aj = udiv i32 %i.ah, %i.ai                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !120 ; 20 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.an = load i64, ptr %i.am, align 8, !tbaa !125 ; 3 uses
  %i.ao = trunc i64 %i.an to i32                  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !90 ; 6 uses
  %i.ar = icmp slt i32 %i.aq, 3
  br i1 %i.ar, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.30, i32 noundef 109) #23
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 8, !tbaa !57    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !45
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.ay = icmp sgt i32 %i.aq, 0
  br i1 %i.ay, label %bb.h, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.az = icmp eq i32 %i.aq, 0
  %i.ba = zext i1 %i.az to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 84 ; 2 uses
  %i.bc = icmp eq i32 %i.aq, 2
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 1
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !8
  br label %vector.ph110

bb.j:                                             ; preds = %bb.h, %.thread.i.i
  %i.bh = phi i32 [ %i.ba, %.thread.i.i ], [ %i.bf, %bb.h ]
  %i.bi = icmp sgt i32 %i.aq, -1
  %i.bj = zext i1 %i.bi to i32
  br label %vector.ph110

vector.ph110:                                     ; preds = %bb.i, %bb.j
  %i.bk = phi i32 [ %i.bf, %bb.i ], [ %i.bh, %bb.j ] ; 8 uses
  %i.bl = phi i32 [ %i.bg, %bb.i ], [ %i.bj, %bb.j ] ; 3 uses
  %i.bm = sub nsw i32 0, %i.w
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sext i32 %i.w to i64
  %i.bp = shl nsw i32 %i.w, 1
  %broadcast.splatinsert111 = insertelement <16 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat112 = shufflevector <16 x i32> %broadcast.splatinsert111, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <16 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat114 = shufflevector <16 x i64> %broadcast.splatinsert113, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <16 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat116 = shufflevector <16 x i64> %broadcast.splatinsert115, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <16 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat118 = shufflevector <16 x i32> %broadcast.splatinsert117, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph110
  %index120 = phi i64 [ 0, %vector.ph110 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph110 ], [ %vec.ind.next, %vector.body119 ] ; 2 uses
  %vec.ind121 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph110 ], [ %vec.ind.next123, %vector.body119 ] ; 2 uses
  %i.bq = add nsw <16 x i64> %vec.ind, splat (i64 -1280) ; 2 uses
  %i.br = icmp slt <16 x i64> %i.bq, %broadcast.splat116
  %i.bs = icmp sgt <16 x i64> %i.bq, %broadcast.splat114
  %i.bt = add <16 x i32> %broadcast.splat118, %vec.ind121
  %i.bu = select <16 x i1> %i.bs, <16 x i32> %broadcast.splat112, <16 x i32> %i.bt
  %i.bv = trunc <16 x i32> %i.bu to <16 x i8>
  %i.bw = select <16 x i1> %i.br, <16 x i8> zeroinitializer, <16 x i8> %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 %index120
  store <16 x i8> %i.bw, ptr %i.bx, align 16, !tbaa !45
  %index.next122 = add nuw i64 %index120, 16      ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next123 = add <16 x i32> %vec.ind121, splat (i32 16)
  %i.by = icmp eq i64 %index.next122, 2816
  br i1 %i.by, label %.preheader175.i, label %vector.body119, !llvm.loop !166

.preheader175.i:                                  ; preds = %vector.body119
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bk to i64 ; 23 uses
  %i.bz = mul nuw nsw i32 %i.aj, %i.ag            ; 3 uses
  %i.ca = icmp sgt i32 %i.bk, 0                   ; 2 uses
  br i1 %i.ca, label %.lr.ph.i, label %.preheader172.i

.lr.ph.i:                                         ; preds = %.preheader175.i
  %i.cb = add nsw i32 %i.ab, 2                    ; 6 uses
  %min.iters.check98 = icmp ult i32 %i.bk, 8
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i
  %scevgep91 = getelementptr i8, ptr %i.aa, i64 4
  %i.cc = sext i32 %i.ab to i64
  %i.cd = add nsw i64 %i.cc, %.sroa.0.0.insert.ext.i.i
  %i.ce = shl nsw i64 %i.cd, 2
  %scevgep92 = getelementptr i8, ptr %scevgep91, i64 %i.ce
  %scevgep93 = getelementptr i8, ptr %i.al, i64 %.sroa.0.0.insert.ext.i.i
  %bound094 = icmp ult ptr %i.ae, %scevgep93
  %bound195 = icmp ult ptr %i.al, %scevgep92
  %found.conflict96 = and i1 %bound094, %bound195
  br i1 %found.conflict96, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck90
  %n.vec100 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next105, %vector.body101 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %index102 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load103 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !45, !alias.scope !167
  %wide.load104 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !45, !alias.scope !167
  %i.ch = zext <4 x i8> %wide.load103 to <4 x i32>
  %i.ci = zext <4 x i8> %wide.load104 to <4 x i32>
  %i.cj = mul nsw <4 x i32> %broadcast.splat, %i.ch
  %i.ck = mul nsw <4 x i32> %broadcast.splat, %i.ci
  %i.cl = and <4 x i32> %i.cj, splat (i32 65535)
  %i.cm = and <4 x i32> %i.ck, splat (i32 65535)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index102 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <4 x i32> %i.cl, ptr %i.cn, align 4, !tbaa !8, !alias.scope !170, !noalias !167
  store <4 x i32> %i.cm, ptr %i.co, align 4, !tbaa !8, !alias.scope !170, !noalias !167
  %index.next105 = add nuw i64 %index102, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next105, %n.vec100
  br i1 %i.cp, label %middle.block106, label %vector.body101, !llvm.loop !172

middle.block106:                                  ; preds = %vector.body101
  %cmp.n107 = icmp eq i64 %n.vec100, %.sroa.0.0.insert.ext.i.i
  br i1 %cmp.n107, label %.preheader174.i, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %vector.memcheck90, %.lr.ph.i, %middle.block106
  %indvars.iv208.i.ph = phi i64 [ 0, %vector.memcheck90 ], [ 0, %.lr.ph.i ], [ %n.vec100, %middle.block106 ] ; 3 uses
  %xtraiter148 = and i64 %.sroa.0.0.insert.ext.i.i, 3 ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %scalar.ph97.prol.loopexit, label %scalar.ph97.prol

scalar.ph97.prol:                                 ; preds = %scalar.ph97.preheader, %scalar.ph97.prol
  %indvars.iv208.i.prol = phi i64 [ %indvars.iv.next209.i.prol, %scalar.ph97.prol ], [ %indvars.iv208.i.ph, %scalar.ph97.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph97.prol ], [ 0, %scalar.ph97.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv208.i.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !45
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.cb, %i.cs
  %i.cu = and i32 %i.ct, 65535
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv208.i.prol
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !8
  %indvars.iv.next209.i.prol = add nuw nsw i64 %indvars.iv208.i.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph97.prol.loopexit, label %scalar.ph97.prol, !llvm.loop !173

scalar.ph97.prol.loopexit:                        ; preds = %scalar.ph97.prol, %scalar.ph97.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %scalar.ph97.preheader ], [ %indvars.iv.next209.i.prol, %scalar.ph97.prol ]
  %i.cw = sub nsw i64 %indvars.iv208.i.ph, %.sroa.0.0.insert.ext.i.i
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %.preheader174.i, label %scalar.ph97

.preheader174.i:                                  ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97, %middle.block106
  %i.cy = icmp sgt i32 %i.u, 3
  br i1 %i.cy, label %.preheader173.preheader.i, label %.preheader172.i

.preheader173.preheader.i:                        ; preds = %.preheader174.i
  %sext252.i = shl i64 %i.an, 32
  %i.cz = ashr exact i64 %sext252.i, 32           ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 2)
  %wide.trip.count220.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %scevgep69 = getelementptr i8, ptr %i.aa, i64 4
  %i.da = shl nuw i32 %i.ab, 2
  %i.db = zext i32 %i.da to i64
  %i.dc = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %i.dd = getelementptr i8, ptr %scevgep69, i64 %i.dc
  %scevgep70 = getelementptr i8, ptr %i.dd, i64 %i.db
  %scevgep71 = getelementptr i8, ptr %i.al, i64 %i.cz
  %i.de = add nsw i64 %wide.trip.count220.i, -1
  %i.df = mul nsw i64 %i.de, %i.cz
  %i.dg = getelementptr i8, ptr %i.al, i64 %i.df
  %scevgep72 = getelementptr i8, ptr %i.dg, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check77 = icmp ult i32 %i.bk, 8
  %bound073 = icmp ult ptr %i.ae, %scevgep72
  %bound174 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict75 = and i1 %bound073, %bound174
  %stride.check = icmp slt i64 %i.cz, 0
  %i.dh = or i1 %found.conflict75, %stride.check
  %n.vec79 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n88 = icmp eq i64 %n.vec79, %.sroa.0.0.insert.ext.i.i
  %xtraiter151 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %i.di = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  br label %.preheader173.i

scalar.ph97:                                      ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.3, %scalar.ph97 ], [ %indvars.iv208.i.unr, %scalar.ph97.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv208.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !45
  %i.dl = zext i8 %i.dk to i32
  %i.dm = mul nsw i32 %i.cb, %i.dl
  %i.dn = and i32 %i.dm, 65535
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv208.i
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !8
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next209.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !45
  %i.dr = zext i8 %i.dq to i32
  %i.ds = mul nsw i32 %i.cb, %i.dr
  %i.dt = and i32 %i.ds, 65535
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next209.i
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !8
  %indvars.iv.next209.i.1 = add nuw nsw i64 %indvars.iv208.i, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next209.i.1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !45
  %i.dx = zext i8 %i.dw to i32
  %i.dy = mul nsw i32 %i.cb, %i.dx
  %i.dz = and i32 %i.dy, 65535
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next209.i.1
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !8
  %indvars.iv.next209.i.2 = add nuw nsw i64 %indvars.iv208.i, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next209.i.2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !45
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nsw i32 %i.cb, %i.ed
  %i.ef = and i32 %i.ee, 65535
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next209.i.2
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !8
  %indvars.iv.next209.i.3 = add nuw nsw i64 %indvars.iv208.i, 4 ; 2 uses
  %exitcond211.not.i.3 = icmp eq i64 %indvars.iv.next209.i.3, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond211.not.i.3, label %.preheader174.i, label %scalar.ph97, !llvm.loop !175

.preheader173.i:                                  ; preds = %._crit_edge.i, %.preheader173.preheader.i
  %indvars.iv217.i = phi i64 [ 1, %.preheader173.preheader.i ], [ %indvars.iv.next218.i, %._crit_edge.i ] ; 2 uses
  %i.eh = mul nsw i64 %indvars.iv217.i, %i.cz
  %invariant.gep.i = getelementptr i8, ptr %i.al, i64 %i.eh ; 4 uses
  %brmerge = select i1 %min.iters.check77, i1 true, i1 %i.dh
  br i1 %brmerge, label %scalar.ph76.preheader, label %vector.body80

vector.body80:                                    ; preds = %.preheader173.i, %vector.body80
  %index81 = phi i64 [ %index.next86, %vector.body80 ], [ 0, %.preheader173.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index81 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %wide.load82 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !8, !alias.scope !176, !noalias !179
  %wide.load83 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !8, !alias.scope !176, !noalias !179
  %i.ek = getelementptr i8, ptr %invariant.gep.i, i64 %index81 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %wide.load84 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !45, !alias.scope !179
  %wide.load85 = load <4 x i8>, ptr %i.el, align 1, !tbaa !45, !alias.scope !179
  %i.em = zext <4 x i8> %wide.load84 to <4 x i32>
  %i.en = zext <4 x i8> %wide.load85 to <4 x i32>
  %i.eo = add nsw <4 x i32> %wide.load82, %i.em
  %i.ep = add nsw <4 x i32> %wide.load83, %i.en
  %i.eq = and <4 x i32> %i.eo, splat (i32 65535)
  %i.er = and <4 x i32> %i.ep, splat (i32 65535)
  store <4 x i32> %i.eq, ptr %i.ei, align 4, !tbaa !8, !alias.scope !176, !noalias !179
  store <4 x i32> %i.er, ptr %i.ej, align 4, !tbaa !8, !alias.scope !176, !noalias !179
  %index.next86 = add nuw i64 %index81, 8         ; 2 uses
  %i.es = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.es, label %middle.block87, label %vector.body80, !llvm.loop !181

middle.block87:                                   ; preds = %vector.body80
  br i1 %cmp.n88, label %._crit_edge.i, label %scalar.ph76.preheader

scalar.ph76.preheader:                            ; preds = %.preheader173.i, %middle.block87
  %indvars.iv212.i.ph = phi i64 [ %n.vec79, %middle.block87 ], [ 0, %.preheader173.i ] ; 5 uses
  br i1 %lcmp.mod152.not, label %scalar.ph76.prol.loopexit, label %scalar.ph76.prol

scalar.ph76.prol:                                 ; preds = %scalar.ph76.preheader
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv212.i.ph ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i.ph
  %i.ev = load i8, ptr %gep.i.prol, align 1, !tbaa !45
  %i.ew = zext i8 %i.ev to i32
  %i.ex = add nsw i32 %i.eu, %i.ew
  %i.ey = and i32 %i.ex, 65535
  store i32 %i.ey, ptr %i.et, align 4, !tbaa !8
  %indvars.iv.next213.i.prol = or disjoint i64 %indvars.iv212.i.ph, 1
  br label %scalar.ph76.prol.loopexit

scalar.ph76.prol.loopexit:                        ; preds = %scalar.ph76.prol, %scalar.ph76.preheader
  %indvars.iv212.i.unr = phi i64 [ %indvars.iv212.i.ph, %scalar.ph76.preheader ], [ %indvars.iv.next213.i.prol, %scalar.ph76.prol ]
  %i.ez = icmp eq i64 %indvars.iv212.i.ph, %i.di
  br i1 %i.ez, label %._crit_edge.i, label %scalar.ph76

.preheader172.i:                                  ; preds = %._crit_edge.i, %.preheader174.i, %.preheader175.i
  %i.fa = icmp sgt i32 %i.bl, 0
  br i1 %i.fa, label %.lr.ph202.i, label %_ZN2cvL13prefilterNormERKNS_3MatERS0_iiPi.exit

.lr.ph202.i:                                      ; preds = %.preheader172.i
  %i.fb = xor i32 %i.ab, -1                       ; 3 uses
  %i.fc = add nsw i32 %i.bl, -1                   ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %.not169184.i = icmp slt i32 %i.u, -1
  %i.ff = shl nuw i64 %.sroa.0.0.insert.ext.i.i, 32
  %sext.i = add i64 %i.ff, -4294967296
  %i.fg = ashr exact i64 %sext.i, 30
  %i.fh = getelementptr inbounds i8, ptr %i.ae, i64 %i.fg ; 3 uses
  %.not170188.i = icmp slt i32 %i.u, 2
  %i.fi = add i32 %i.bk, -1                       ; 3 uses
  %i.fj = icmp sgt i32 %i.bk, 2
  %i.fk = sext i32 %i.bk to i64
  %i.fl = sext i32 %i.ab to i64
  %sext253.i = shl i64 %i.an, 32
  %i.fm = ashr exact i64 %sext253.i, 32
  %wide.trip.count245.i = zext nneg i32 %i.bl to i64
  %wide.trip.count230.i = zext i32 %i.ac to i64   ; 4 uses
  %invariant.gep256.i = getelementptr [4 x i8], ptr %i.ae, i64 %i.fk ; 3 uses
  %wide.trip.count240.i = zext nneg i32 %i.fi to i64
  %invariant.gep258.i = getelementptr [4 x i8], ptr %i.ae, i64 %i.fl
  %.pre.i = add nsw i32 %i.fi, %i.ab
  %.pre247.i = sext i32 %.pre.i to i64
  %scevgep = getelementptr i8, ptr %i.aa, i64 4
  %6 = sext i32 %i.ab to i64
  %i.fn = add nsw i64 %6, %.sroa.0.0.insert.ext.i.i
  %i.fo = shl nsw i64 %i.fn, 2
  %scevgep42 = getelementptr i8, ptr %scevgep, i64 %i.fo ; 2 uses
  %narrow = xor i32 %i.ab, -1
  %scevgep44 = getelementptr i8, ptr %i.al, i64 %.sroa.0.0.insert.ext.i.i
  %scevgep47 = getelementptr i8, ptr %i.al, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check53 = icmp ult i32 %i.bk, 8
  %n.vec55 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n66 = icmp eq i64 %n.vec55, %.sroa.0.0.insert.ext.i.i
  %xtraiter154 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  %i.fp = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  %xtraiter157 = and i64 %wide.trip.count230.i, 1
  %.off = add i32 %i.u, 1
  %i.fq = icmp ult i32 %.off, 3
  %unroll_iter = and i64 %wide.trip.count230.i, 4294967294
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  %lcmp.mod159 = trunc i32 %i.ac to i1
  %i.fr = add nsw i64 %wide.trip.count230.i, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ac, 9
  %n.vec = and i64 %i.fr, -8                      ; 3 uses
  %i.fs = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br label %bb.k

scalar.ph76:                                      ; preds = %scalar.ph76.prol.loopexit, %scalar.ph76
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i.1, %scalar.ph76 ], [ %indvars.iv212.i.unr, %scalar.ph76.prol.loopexit ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv212.i ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i
  %i.fv = load i8, ptr %gep.i, align 1, !tbaa !45
  %i.fw = zext i8 %i.fv to i32
  %i.fx = add nsw i32 %i.fu, %i.fw
  %i.fy = and i32 %i.fx, 65535
  store i32 %i.fy, ptr %i.ft, align 4, !tbaa !8
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next213.i ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !8
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next213.i
  %i.gb = load i8, ptr %gep.i.1, align 1, !tbaa !45
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nsw i32 %i.ga, %i.gc
  %i.ge = and i32 %i.gd, 65535
  store i32 %i.ge, ptr %i.fz, align 4, !tbaa !8
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 2 uses
  %exitcond216.not.i.1 = icmp eq i64 %indvars.iv.next213.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond216.not.i.1, label %._crit_edge.i, label %scalar.ph76, !llvm.loop !182

._crit_edge.i:                                    ; preds = %scalar.ph76.prol.loopexit, %scalar.ph76, %middle.block87
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.preheader172.i, label %.preheader173.i, !llvm.loop !183

bb.k:                                             ; preds = %._crit_edge198.i, %.lr.ph202.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph202.i ], [ %indvars.iv.next243.i, %._crit_edge198.i ] ; 6 uses
  %i.gf = trunc i64 %indvars.iv242.i to i32
  %i.gg = add i32 %i.gf, %narrow
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %i.gh = mul i32 %smax, %i.ao
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.al, i64 %i.gi
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %i.gi
  %i.gj = trunc i64 %indvars.iv242.i to i32
  %i.gk = add i32 %i.ab, %i.gj
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gk, i32 %i.fc)
  %i.gl = mul i32 %smin, %i.ao
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %scevgep46 = getelementptr i8, ptr %i.al, i64 %i.gm
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.gm
  %i.gn = trunc i64 %indvars.iv242.i to i32       ; 3 uses
  %i.go = add i32 %i.gn, %i.fb
  %i.gp = tail call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gq = mul nsw i32 %i.gp, %i.ao
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.al, i64 %i.gr ; 4 uses
  %i.gt = add i32 %i.ab, %i.gn
  %..i = tail call i32 @llvm.smin.i32(i32 %i.gt, i32 %i.fc)
  %i.gu = mul nsw i32 %..i, %i.ao
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %i.al, i64 %i.gv ; 4 uses
  %i.gx = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 1)
  %i.gy = add nsw i32 %i.gx, -1
  %i.gz = mul nsw i32 %i.gy, %i.ao
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %i.al, i64 %i.ha ; 3 uses
  %i.hc = mul nsw i64 %indvars.iv242.i, %i.fm
  %i.hd = getelementptr inbounds i8, ptr %i.al, i64 %i.hc ; 5 uses
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 3 uses
  %i.he = trunc nuw nsw i64 %indvars.iv.next243.i to i32
  %i.hf = tail call i32 @llvm.smin.i32(i32 %i.he, i32 %i.fc)
  %i.hg = mul nsw i32 %i.hf, %i.ao
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %i.al, i64 %i.hh ; 3 uses
  %i.hj = load ptr, ptr %i.fd, align 8, !tbaa !120
  %i.hk = load i64, ptr %i.fe, align 8, !tbaa !125
  %i.hl = mul i64 %i.hk, %indvars.iv242.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hl ; 3 uses
  br i1 %i.ca, label %.lr.ph183.i.preheader, label %.preheader.i

.lr.ph183.i.preheader:                            ; preds = %bb.k
  br i1 %min.iters.check53, label %.lr.ph183.i.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph183.i.preheader
  %bound0 = icmp ult ptr %i.ae, %scevgep45
  %bound1 = icmp ult ptr %scevgep43, %scevgep42
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %i.ae, %scevgep48
  %bound150 = icmp ult ptr %scevgep46, %scevgep42
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  br i1 %conflict.rdx, label %.lr.ph183.i.preheader144, label %vector.body56

vector.body56:                                    ; preds = %vector.memcheck, %vector.body56
  %index57 = phi i64 [ %index.next64, %vector.body56 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index57 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %wide.load58 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !8, !alias.scope !184, !noalias !187
  %wide.load59 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !8, !alias.scope !184, !noalias !187
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index57 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %wide.load60 = load <4 x i8>, ptr %i.hp, align 1, !tbaa !45, !alias.scope !190
  %wide.load61 = load <4 x i8>, ptr %i.hq, align 1, !tbaa !45, !alias.scope !190
  %i.hr = zext <4 x i8> %wide.load60 to <4 x i32>
  %i.hs = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.ht = add nsw <4 x i32> %wide.load58, %i.hr
  %i.hu = add nsw <4 x i32> %wide.load59, %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %index57 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %wide.load62 = load <4 x i8>, ptr %i.hv, align 1, !tbaa !45, !alias.scope !191
  %wide.load63 = load <4 x i8>, ptr %i.hw, align 1, !tbaa !45, !alias.scope !191
  %i.hx = zext <4 x i8> %wide.load62 to <4 x i32>
  %i.hy = zext <4 x i8> %wide.load63 to <4 x i32>
  %i.hz = sub <4 x i32> %i.ht, %i.hx
  %i.ia = sub <4 x i32> %i.hu, %i.hy
  %i.ib = and <4 x i32> %i.hz, splat (i32 65535)
  %i.ic = and <4 x i32> %i.ia, splat (i32 65535)
  store <4 x i32> %i.ib, ptr %i.hn, align 4, !tbaa !8, !alias.scope !184, !noalias !187
  store <4 x i32> %i.ic, ptr %i.ho, align 4, !tbaa !8, !alias.scope !184, !noalias !187
  %index.next64 = add nuw i64 %index57, 8         ; 2 uses
  %i.id = icmp eq i64 %index.next64, %n.vec55
  br i1 %i.id, label %middle.block65, label %vector.body56, !llvm.loop !192

middle.block65:                                   ; preds = %vector.body56
  br i1 %cmp.n66, label %.preheader.i, label %.lr.ph183.i.preheader144

.lr.ph183.i.preheader144:                         ; preds = %vector.memcheck, %.lr.ph183.i.preheader, %middle.block65
  %indvars.iv222.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph183.i.preheader ], [ %n.vec55, %middle.block65 ] ; 6 uses
  br i1 %lcmp.mod155.not, label %.lr.ph183.i.prol.loopexit, label %.lr.ph183.i.prol

.lr.ph183.i.prol:                                 ; preds = %.lr.ph183.i.preheader144
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv222.i.ph ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv222.i.ph
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !45
  %i.ii = zext i8 %i.ih to i32
  %i.ij = add nsw i32 %i.if, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gs, i64 %indvars.iv222.i.ph
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !45
  %i.im = zext i8 %i.il to i32
  %i.in = sub i32 %i.ij, %i.im
  %i.io = and i32 %i.in, 65535
  store i32 %i.io, ptr %i.ie, align 4, !tbaa !8
  %indvars.iv.next223.i.prol = or disjoint i64 %indvars.iv222.i.ph, 1
  br label %.lr.ph183.i.prol.loopexit

.lr.ph183.i.prol.loopexit:                        ; preds = %.lr.ph183.i.prol, %.lr.ph183.i.preheader144
  %indvars.iv222.i.unr = phi i64 [ %indvars.iv222.i.ph, %.lr.ph183.i.preheader144 ], [ %indvars.iv.next223.i.prol, %.lr.ph183.i.prol ]
  %i.ip = icmp eq i64 %indvars.iv222.i.ph, %i.fp
  br i1 %i.ip, label %.preheader.i, label %.lr.ph183.i

.preheader.i:                                     ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i, %middle.block65, %bb.k
  br i1 %.not169184.i, label %._crit_edge187.thread.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %.preheader.i
  br i1 %i.fq, label %.lr.ph186.i.epil.preheader, label %.lr.ph186.i

._crit_edge187.thread.i:                          ; preds = %.preheader.i
  %i.iq = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ir = mul nsw i32 %i.iq, %i.ac
  br label %._crit_edge193.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.1, %.lr.ph183.i ], [ %indvars.iv222.i.unr, %.lr.ph183.i.prol.loopexit ] ; 5 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv222.i ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv222.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !45
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nsw i32 %i.it, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gs, i64 %indvars.iv222.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !45
  %i.ja = zext i8 %i.iz to i32
  %i.jb = sub i32 %i.ix, %i.ja
  %i.jc = and i32 %i.jb, 65535
  store i32 %i.jc, ptr %i.is, align 4, !tbaa !8
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next223.i ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next223.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !45
  %i.jh = zext i8 %i.jg to i32
end_hunk_0
