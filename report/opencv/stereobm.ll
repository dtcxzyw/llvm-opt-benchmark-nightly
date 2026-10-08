Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereobm?download=true
inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv5utils10BufferArea8allocateIhEEvRPT_mt:bb.a
bb.r:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %8, align 8, !tbaa !32     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.r
  %i.v = load i64, ptr %i.t, align 8, !tbaa !27
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
  %i.ab = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.x
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !27
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
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !110, !range !111, !noundef !112
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.aj = load ptr, ptr %1, align 8, !tbaa !28
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
  %i.am = load ptr, ptr %12, align 8, !tbaa !32   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ae
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !27
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
  %i.c = load i32, ptr %1, align 4, !tbaa !65     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !66
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

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !195, !nonnull !112, !align !113 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70   ; 10 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 6 uses
  br i1 %i.o, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19   ; 4 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !196, !nonnull !112, !align !114
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !91  ; 4 uses
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
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !79 ; 18 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.an = load i64, ptr %i.am, align 8, !tbaa !84 ; 3 uses
  %i.ao = trunc i64 %i.an to i32                  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !58 ; 6 uses
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
  %i.at = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !27
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.oh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i10 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  %i.ay = icmp sgt i32 %i.aq, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.ba = icmp eq i32 %i.aq, 2
  %i.bb = zext i1 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.be = icmp eq i32 %i.aq, 0
  %i.bf = zext i1 %i.be to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i

_ZNK2cv8MatShapeclEv.exit.i:                      ; preds = %bb.i, %bb.h
  %i.bg = phi i32 [ %i.bd, %bb.h ], [ %i.bf, %bb.i ] ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sub nsw i32 0, %i.w
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sext i32 %i.w to i64
  %i.bm = shl nsw i32 %i.w, 1
  %broadcast.splatinsert108 = insertelement <16 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat109 = shufflevector <16 x i32> %broadcast.splatinsert108, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <16 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat111 = shufflevector <16 x i64> %broadcast.splatinsert110, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat113 = shufflevector <16 x i64> %broadcast.splatinsert112, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <16 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat115 = shufflevector <16 x i32> %broadcast.splatinsert114, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %_ZNK2cv8MatShapeclEv.exit.i
  %index117 = phi i64 [ 0, %_ZNK2cv8MatShapeclEv.exit.i ], [ %index.next119, %vector.body116 ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %_ZNK2cv8MatShapeclEv.exit.i ], [ %vec.ind.next, %vector.body116 ] ; 2 uses
  %vec.ind118 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %_ZNK2cv8MatShapeclEv.exit.i ], [ %vec.ind.next120, %vector.body116 ] ; 2 uses
  %i.bn = add nsw <16 x i64> %vec.ind, splat (i64 -1280) ; 2 uses
  %i.bo = icmp slt <16 x i64> %i.bn, %broadcast.splat113
  %i.bp = icmp sgt <16 x i64> %i.bn, %broadcast.splat111
  %i.bq = add <16 x i32> %broadcast.splat115, %vec.ind118
  %i.br = select <16 x i1> %i.bp, <16 x i32> %broadcast.splat109, <16 x i32> %i.bq
  %i.bs = trunc <16 x i32> %i.br to <16 x i8>
  %i.bt = select <16 x i1> %i.bo, <16 x i8> zeroinitializer, <16 x i8> %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %index117
  store <16 x i8> %i.bt, ptr %i.bu, align 16, !tbaa !27
  %index.next119 = add nuw i64 %index117, 16      ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next120 = add <16 x i32> %vec.ind118, splat (i32 16)
  %i.bv = icmp eq i64 %index.next119, 2816
  br i1 %i.bv, label %.preheader175.i, label %vector.body116, !llvm.loop !164

.preheader175.i:                                  ; preds = %vector.body116
  %i.bw = icmp eq i32 %i.aq, 2
  %i.bx = icmp sgt i32 %i.aq, -1
  %i.by = zext i1 %i.bx to i32
  %i.bz = select i1 %i.bw, i32 %i.bi, i32 %i.by   ; 3 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bg to i64 ; 23 uses
  %i.ca = mul nuw nsw i32 %i.aj, %i.ag            ; 3 uses
  %i.cb = icmp sgt i32 %i.bg, 0                   ; 2 uses
  br i1 %i.cb, label %.lr.ph.i, label %.preheader172.i

.lr.ph.i:                                         ; preds = %.preheader175.i
  %i.cc = add nsw i32 %i.ab, 2                    ; 6 uses
  %min.iters.check95 = icmp ult i32 %i.bg, 8
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph.i
  %scevgep88.a = getelementptr i8, ptr %i.aa, i64 4
  %i.cd = sext i32 %i.ab to i64
  %i.ce = add nsw i64 %i.cd, %.sroa.0.0.insert.ext.i.i
  %i.cf = shl nsw i64 %i.ce, 2
  %scevgep89.a = getelementptr i8, ptr %scevgep88.a, i64 %i.cf
  %scevgep90 = getelementptr i8, ptr %i.al, i64 %.sroa.0.0.insert.ext.i.i
  %bound091 = icmp ult ptr %i.ae, %scevgep90
  %bound192 = icmp ult ptr %i.al, %scevgep89.a
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck87
  %n.vec97 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next102, %vector.body98 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 %index99 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %wide.load100.a = load <4 x i8>, ptr %i.cg, align 1, !tbaa !27, !alias.scope !197
  %wide.load101 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !27, !alias.scope !197
  %i.ci = zext <4 x i8> %wide.load100.a to <4 x i32>
  %i.cj = zext <4 x i8> %wide.load101 to <4 x i32>
  %i.ck = mul nsw <4 x i32> %broadcast.splat, %i.ci
  %i.cl = mul nsw <4 x i32> %broadcast.splat, %i.cj
  %i.cm = and <4 x i32> %i.ck, splat (i32 65535)
  %i.cn = and <4 x i32> %i.cl, splat (i32 65535)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index99 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x i32> %i.cm, ptr %i.co, align 4, !tbaa !8, !alias.scope !198, !noalias !197
  store <4 x i32> %i.cn, ptr %i.cp, align 4, !tbaa !8, !alias.scope !198, !noalias !197
  %index.next102 = add nuw i64 %index99, 8        ; 2 uses
  %i.cq = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.cq, label %middle.block103, label %vector.body98, !llvm.loop !168

middle.block103:                                  ; preds = %vector.body98
  %cmp.n104 = icmp eq i64 %n.vec97, %.sroa.0.0.insert.ext.i.i
  br i1 %cmp.n104, label %.preheader174.i, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %vector.memcheck87, %.lr.ph.i, %middle.block103
  %indvars.iv208.i.ph = phi i64 [ 0, %vector.memcheck87 ], [ 0, %.lr.ph.i ], [ %n.vec97, %middle.block103 ] ; 3 uses
  %xtraiter145 = and i64 %.sroa.0.0.insert.ext.i.i, 3 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol

scalar.ph94.prol:                                 ; preds = %scalar.ph94.preheader, %scalar.ph94.prol
  %indvars.iv208.i.prol = phi i64 [ %indvars.iv.next209.i.prol, %scalar.ph94.prol ], [ %indvars.iv208.i.ph, %scalar.ph94.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %scalar.ph94.prol ], [ 0, %scalar.ph94.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv208.i.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !27
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nsw i32 %i.cc, %i.ct
  %i.cv = and i32 %i.cu, 65535
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv208.i.prol
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !8
  %indvars.iv.next209.i.prol = add nuw nsw i64 %indvars.iv208.i.prol, 1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol, !llvm.loop !169

scalar.ph94.prol.loopexit:                        ; preds = %scalar.ph94.prol, %scalar.ph94.preheader
  %indvars.iv208.i.unr = phi i64 [ %indvars.iv208.i.ph, %scalar.ph94.preheader ], [ %indvars.iv.next209.i.prol, %scalar.ph94.prol ]
  %i.cx = sub nsw i64 %indvars.iv208.i.ph, %.sroa.0.0.insert.ext.i.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.preheader174.i, label %scalar.ph94

.preheader174.i:                                  ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94, %middle.block103
  %i.cz = icmp sgt i32 %i.u, 3
  br i1 %i.cz, label %.preheader173.preheader.i, label %.preheader172.i

.preheader173.preheader.i:                        ; preds = %.preheader174.i
  %sext252.i = shl i64 %i.an, 32
  %i.da = ashr exact i64 %sext252.i, 32           ; 4 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 2)
  %wide.trip.count220.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %scevgep66.a = getelementptr i8, ptr %i.aa, i64 4
  %i.db = shl nuw i32 %i.ab, 2
  %i.dc = zext i32 %i.db to i64
  %i.dd = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i, 2
  %i.de = getelementptr i8, ptr %scevgep66.a, i64 %i.dd
  %scevgep67.a = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep68.a = getelementptr i8, ptr %i.al, i64 %i.da
  %i.df = add nsw i64 %wide.trip.count220.i, -1
  %i.dg = mul nsw i64 %i.df, %i.da
  %i.dh = getelementptr i8, ptr %i.al, i64 %i.dg
  %scevgep69 = getelementptr i8, ptr %i.dh, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check74 = icmp ult i32 %i.bg, 8
  %bound070 = icmp ult ptr %i.ae, %scevgep69
  %bound171 = icmp ult ptr %scevgep68.a, %scevgep67.a
  %found.conflict72 = and i1 %bound070, %bound171
  %stride.check = icmp slt i64 %i.da, 0
  %i.di = or i1 %found.conflict72, %stride.check
  %n.vec76 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n85 = icmp eq i64 %n.vec76, %.sroa.0.0.insert.ext.i.i
  %xtraiter148 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  %i.dj = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  br label %.preheader173.i

scalar.ph94:                                      ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i.3, %scalar.ph94 ], [ %indvars.iv208.i.unr, %scalar.ph94.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv208.i
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !27
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.cc, %i.dm
  %i.do = and i32 %i.dn, 65535
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv208.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !8
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next209.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !27
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul nsw i32 %i.cc, %i.ds
  %i.du = and i32 %i.dt, 65535
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next209.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !8
  %indvars.iv.next209.i.1 = add nuw nsw i64 %indvars.iv208.i, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next209.i.1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !27
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nsw i32 %i.cc, %i.dy
  %i.ea = and i32 %i.dz, 65535
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next209.i.1
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !8
  %indvars.iv.next209.i.2 = add nuw nsw i64 %indvars.iv208.i, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next209.i.2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !27
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nsw i32 %i.cc, %i.ee
  %i.eg = and i32 %i.ef, 65535
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next209.i.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !8
  %indvars.iv.next209.i.3 = add nuw nsw i64 %indvars.iv208.i, 4 ; 2 uses
  %exitcond211.not.i.3 = icmp eq i64 %indvars.iv.next209.i.3, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond211.not.i.3, label %.preheader174.i, label %scalar.ph94, !llvm.loop !170

.preheader173.i:                                  ; preds = %._crit_edge.i, %.preheader173.preheader.i
  %indvars.iv217.i = phi i64 [ 1, %.preheader173.preheader.i ], [ %indvars.iv.next218.i, %._crit_edge.i ] ; 2 uses
  %i.ei = mul nsw i64 %indvars.iv217.i, %i.da
  %invariant.gep.i = getelementptr i8, ptr %i.al, i64 %i.ei ; 4 uses
  %brmerge = select i1 %min.iters.check74, i1 true, i1 %i.di
  br i1 %brmerge, label %scalar.ph73.preheader, label %vector.body77

vector.body77:                                    ; preds = %.preheader173.i, %vector.body77
  %index78 = phi i64 [ %index.next83, %vector.body77 ], [ 0, %.preheader173.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index78 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %wide.load79.a = load <4 x i32>, ptr %i.ej, align 4, !tbaa !8, !alias.scope !199, !noalias !200
  %wide.load80.a = load <4 x i32>, ptr %i.ek, align 4, !tbaa !8, !alias.scope !199, !noalias !200
  %i.el = getelementptr i8, ptr %invariant.gep.i, i64 %index78 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 4
  %wide.load81.a = load <4 x i8>, ptr %i.el, align 1, !tbaa !27, !alias.scope !200
  %wide.load82 = load <4 x i8>, ptr %i.em, align 1, !tbaa !27, !alias.scope !200
  %i.en = zext <4 x i8> %wide.load81.a to <4 x i32>
  %i.eo = zext <4 x i8> %wide.load82 to <4 x i32>
  %i.ep = add nsw <4 x i32> %wide.load79.a, %i.en
  %i.eq = add nsw <4 x i32> %wide.load80.a, %i.eo
  %i.er = and <4 x i32> %i.ep, splat (i32 65535)
  %i.es = and <4 x i32> %i.eq, splat (i32 65535)
  store <4 x i32> %i.er, ptr %i.ej, align 4, !tbaa !8, !alias.scope !199, !noalias !200
  store <4 x i32> %i.es, ptr %i.ek, align 4, !tbaa !8, !alias.scope !199, !noalias !200
  %index.next83 = add nuw i64 %index78, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.et, label %middle.block84, label %vector.body77, !llvm.loop !174

middle.block84:                                   ; preds = %vector.body77
  br i1 %cmp.n85, label %._crit_edge.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %.preheader173.i, %middle.block84
  %indvars.iv212.i.ph = phi i64 [ %n.vec76, %middle.block84 ], [ 0, %.preheader173.i ] ; 5 uses
  br i1 %lcmp.mod149.not, label %scalar.ph73.prol.loopexit, label %scalar.ph73.prol

scalar.ph73.prol:                                 ; preds = %scalar.ph73.preheader
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv212.i.ph ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i.ph
  %i.ew = load i8, ptr %gep.i.prol, align 1, !tbaa !27
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nsw i32 %i.ev, %i.ex
  %i.ez = and i32 %i.ey, 65535
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !8
  %indvars.iv.next213.i.prol = or disjoint i64 %indvars.iv212.i.ph, 1
  br label %scalar.ph73.prol.loopexit

scalar.ph73.prol.loopexit:                        ; preds = %scalar.ph73.prol, %scalar.ph73.preheader
  %indvars.iv212.i.unr = phi i64 [ %indvars.iv212.i.ph, %scalar.ph73.preheader ], [ %indvars.iv.next213.i.prol, %scalar.ph73.prol ]
  %i.fa = icmp eq i64 %indvars.iv212.i.ph, %i.dj
  br i1 %i.fa, label %._crit_edge.i, label %scalar.ph73

.preheader172.i:                                  ; preds = %._crit_edge.i, %.preheader174.i, %.preheader175.i
  %i.fb = icmp sgt i32 %i.bz, 0
  br i1 %i.fb, label %.lr.ph202.i, label %_ZN2cvL13prefilterNormERKNS_3MatERS0_iiPi.exit

.lr.ph202.i:                                      ; preds = %.preheader172.i
  %i.fc = xor i32 %i.ab, -1                       ; 3 uses
  %i.fd = add nsw i32 %i.bz, -1                   ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %.not169184.i = icmp slt i32 %i.u, -1
  %i.fg = shl nuw i64 %.sroa.0.0.insert.ext.i.i, 32
  %sext.i = add i64 %i.fg, -4294967296
  %i.fh = ashr exact i64 %sext.i, 30
  %i.fi = getelementptr inbounds i8, ptr %i.ae, i64 %i.fh ; 3 uses
  %.not170188.i = icmp slt i32 %i.u, 2
  %i.fj = add i32 %i.bg, -1                       ; 3 uses
  %i.fk = icmp sgt i32 %i.bg, 2
  %i.fl = sext i32 %i.bg to i64
  %i.fm = sext i32 %i.ab to i64
  %sext253.i = shl i64 %i.an, 32
  %i.fn = ashr exact i64 %sext253.i, 32
  %wide.trip.count245.i = zext nneg i32 %i.bz to i64
  %wide.trip.count230.i = zext i32 %i.ac to i64   ; 4 uses
  %invariant.gep256.i = getelementptr [4 x i8], ptr %i.ae, i64 %i.fl ; 3 uses
  %wide.trip.count240.i = zext nneg i32 %i.fj to i64
  %invariant.gep258.i = getelementptr [4 x i8], ptr %i.ae, i64 %i.fm
  %.pre.i = add nsw i32 %i.fj, %i.ab
  %.pre247.i = sext i32 %.pre.i to i64
  %scevgep = getelementptr i8, ptr %i.aa, i64 4
  %i.fo = sext i32 %i.ab to i64
  %i.fp = add nsw i64 %i.fo, %.sroa.0.0.insert.ext.i.i
  %i.fq = shl nsw i64 %i.fp, 2
  %scevgep40 = getelementptr i8, ptr %scevgep, i64 %i.fq ; 2 uses
  %scevgep41 = getelementptr i8, ptr %i.al, i64 %.sroa.0.0.insert.ext.i.i
  %narrow = xor i32 %i.ab, -1
  %scevgep44.a = getelementptr i8, ptr %i.al, i64 %.sroa.0.0.insert.ext.i.i
  %min.iters.check50 = icmp ult i32 %i.bg, 8
  %n.vec52 = and i64 %.sroa.0.0.insert.ext.i.i, 2147483640 ; 3 uses
  %cmp.n63 = icmp eq i64 %n.vec52, %.sroa.0.0.insert.ext.i.i
  %xtraiter151 = and i64 %.sroa.0.0.insert.ext.i.i, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %i.fr = add nsw i64 %.sroa.0.0.insert.ext.i.i, -1
  %xtraiter154 = and i64 %wide.trip.count230.i, 1
  %.off = add i32 %i.u, 1
  %i.fs = icmp ult i32 %.off, 3
  %unroll_iter = and i64 %wide.trip.count230.i, 4294967294
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  %lcmp.mod156 = trunc i32 %i.ac to i1
  %i.ft = add nsw i64 %wide.trip.count230.i, -1   ; 2 uses
  %min.iters.check = icmp ult i32 %i.ac, 9
  %n.vec = and i64 %i.ft, -8                      ; 3 uses
  %i.fu = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br label %bb.j

scalar.ph73:                                      ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i.1, %scalar.ph73 ], [ %indvars.iv212.i.unr, %scalar.ph73.prol.loopexit ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv212.i ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv212.i
  %i.fx = load i8, ptr %gep.i, align 1, !tbaa !27
  %i.fy = zext i8 %i.fx to i32
  %i.fz = add nsw i32 %i.fw, %i.fy
  %i.ga = and i32 %i.fz, 65535
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !8
  %indvars.iv.next213.i = add nuw nsw i64 %indvars.iv212.i, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next213.i ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next213.i
  %i.gd = load i8, ptr %gep.i.1, align 1, !tbaa !27
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nsw i32 %i.gc, %i.ge
  %i.gg = and i32 %i.gf, 65535
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !8
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 2 uses
  %exitcond216.not.i.1 = icmp eq i64 %indvars.iv.next213.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond216.not.i.1, label %._crit_edge.i, label %scalar.ph73, !llvm.loop !175

._crit_edge.i:                                    ; preds = %scalar.ph73.prol.loopexit, %scalar.ph73, %middle.block84
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.preheader172.i, label %.preheader173.i, !llvm.loop !176

bb.j:                                             ; preds = %._crit_edge198.i, %.lr.ph202.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph202.i ], [ %indvars.iv.next243.i, %._crit_edge198.i ] ; 6 uses
  %i.gh = trunc i64 %indvars.iv242.i to i32
  %i.gi = add i32 %i.gh, %narrow
  %smax = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gj = mul i32 %smax, %i.ao
  %i.gk = sext i32 %i.gj to i64
  %scevgep42 = getelementptr i8, ptr %scevgep41, i64 %i.gk
  %i.gl = trunc i64 %indvars.iv242.i to i32
  %i.gm = add i32 %i.ab, %i.gl
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.fd)
  %i.gn = mul i32 %smin, %i.ao
  %i.go = sext i32 %i.gn to i64
  %scevgep45 = getelementptr i8, ptr %scevgep44.a, i64 %i.go
  %i.gp = trunc i64 %indvars.iv242.i to i32       ; 3 uses
  %i.gq = add i32 %i.gp, %i.fc
  %i.gr = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 0)
  %i.gs = mul i32 %i.gr, %i.ao
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr i8, ptr %i.al, i64 %i.gt  ; 5 uses
  %i.gv = add i32 %i.ab, %i.gp
  %..i = tail call i32 @llvm.smin.i32(i32 %i.gv, i32 %i.fd)
  %i.gw = mul i32 %..i, %i.ao
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr i8, ptr %i.al, i64 %i.gx  ; 5 uses
  %i.gz = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 1)
  %i.ha = add nsw i32 %i.gz, -1
  %i.hb = mul nsw i32 %i.ha, %i.ao
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %i.al, i64 %i.hc ; 3 uses
  %i.he = mul nsw i64 %indvars.iv242.i, %i.fn
  %i.hf = getelementptr inbounds i8, ptr %i.al, i64 %i.he ; 5 uses
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 1 ; 3 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv.next243.i to i32
  %i.hh = tail call i32 @llvm.smin.i32(i32 %i.hg, i32 %i.fd)
  %i.hi = mul nsw i32 %i.hh, %i.ao
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.al, i64 %i.hj ; 3 uses
  %i.hl = load ptr, ptr %i.fe, align 8, !tbaa !79
  %i.hm = load i64, ptr %i.ff, align 8, !tbaa !84
  %i.hn = mul i64 %i.hm, %indvars.iv242.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hn ; 3 uses
  br i1 %i.cb, label %.lr.ph183.i.preheader, label %.preheader.i

.lr.ph183.i.preheader:                            ; preds = %bb.j
  br i1 %min.iters.check50, label %.lr.ph183.i.preheader141, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph183.i.preheader
  %bound0 = icmp ult ptr %i.ae, %scevgep42
  %bound1 = icmp ult ptr %i.gu, %scevgep40
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %i.ae, %scevgep45
  %bound147 = icmp ult ptr %i.gy, %scevgep40
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  br i1 %conflict.rdx, label %.lr.ph183.i.preheader141, label %vector.body53

vector.body53:                                    ; preds = %vector.memcheck, %vector.body53
  %index54 = phi i64 [ %index.next61, %vector.body53 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index54 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %wide.load55.a = load <4 x i32>, ptr %i.hp, align 4, !tbaa !8, !alias.scope !201, !noalias !202
  %wide.load56.a = load <4 x i32>, ptr %i.hq, align 4, !tbaa !8, !alias.scope !201, !noalias !202
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 %index54 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %wide.load57.a = load <4 x i8>, ptr %i.hr, align 1, !tbaa !27, !alias.scope !203
  %wide.load58.a = load <4 x i8>, ptr %i.hs, align 1, !tbaa !27, !alias.scope !203
  %i.ht = zext <4 x i8> %wide.load57.a to <4 x i32>
  %i.hu = zext <4 x i8> %wide.load58.a to <4 x i32>
  %i.hv = add nsw <4 x i32> %wide.load55.a, %i.ht
  %i.hw = add nsw <4 x i32> %wide.load56.a, %i.hu
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %index54 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %wide.load59.a = load <4 x i8>, ptr %i.hx, align 1, !tbaa !27, !alias.scope !204
  %wide.load60 = load <4 x i8>, ptr %i.hy, align 1, !tbaa !27, !alias.scope !204
  %i.hz = zext <4 x i8> %wide.load59.a to <4 x i32>
  %i.ia = zext <4 x i8> %wide.load60 to <4 x i32>
  %i.ib = sub <4 x i32> %i.hv, %i.hz
  %i.ic = sub <4 x i32> %i.hw, %i.ia
  %i.id = and <4 x i32> %i.ib, splat (i32 65535)
  %i.ie = and <4 x i32> %i.ic, splat (i32 65535)
  store <4 x i32> %i.id, ptr %i.hp, align 4, !tbaa !8, !alias.scope !201, !noalias !202
  store <4 x i32> %i.ie, ptr %i.hq, align 4, !tbaa !8, !alias.scope !201, !noalias !202
  %index.next61 = add nuw i64 %index54, 8         ; 2 uses
  %i.if = icmp eq i64 %index.next61, %n.vec52
  br i1 %i.if, label %middle.block62, label %vector.body53, !llvm.loop !181

middle.block62:                                   ; preds = %vector.body53
  br i1 %cmp.n63, label %.preheader.i, label %.lr.ph183.i.preheader141

.lr.ph183.i.preheader141:                         ; preds = %vector.memcheck, %.lr.ph183.i.preheader, %middle.block62
  %indvars.iv222.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph183.i.preheader ], [ %n.vec52, %middle.block62 ] ; 6 uses
  br i1 %lcmp.mod152.not, label %.lr.ph183.i.prol.loopexit, label %.lr.ph183.i.prol

.lr.ph183.i.prol:                                 ; preds = %.lr.ph183.i.preheader141
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv222.i.ph ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv222.i.ph
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !27
  %i.ik = zext i8 %i.ij to i32
  %i.il = add nsw i32 %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv222.i.ph
  %i.in = load i8, ptr %i.im, align 1, !tbaa !27
  %i.io = zext i8 %i.in to i32
  %i.ip = sub i32 %i.il, %i.io
  %i.iq = and i32 %i.ip, 65535
  store i32 %i.iq, ptr %i.ig, align 4, !tbaa !8
  %indvars.iv.next223.i.prol = or disjoint i64 %indvars.iv222.i.ph, 1
  br label %.lr.ph183.i.prol.loopexit

.lr.ph183.i.prol.loopexit:                        ; preds = %.lr.ph183.i.prol, %.lr.ph183.i.preheader141
  %indvars.iv222.i.unr = phi i64 [ %indvars.iv222.i.ph, %.lr.ph183.i.preheader141 ], [ %indvars.iv.next223.i.prol, %.lr.ph183.i.prol ]
  %i.ir = icmp eq i64 %indvars.iv222.i.ph, %i.fr
  br i1 %i.ir, label %.preheader.i, label %.lr.ph183.i

.preheader.i:                                     ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i, %middle.block62, %bb.j
  br i1 %.not169184.i, label %._crit_edge187.thread.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %.preheader.i
  br i1 %i.fs, label %.lr.ph186.i.epil.preheader, label %.lr.ph186.i

._crit_edge187.thread.i:                          ; preds = %.preheader.i
  %i.is = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.it = mul nsw i32 %i.is, %i.ac
  br label %._crit_edge193.i

.lr.ph183.i:                                      ; preds = %.lr.ph183.i.prol.loopexit, %.lr.ph183.i
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.1, %.lr.ph183.i ], [ %indvars.iv222.i.unr, %.lr.ph183.i.prol.loopexit ] ; 5 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv222.i ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv222.i
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !27
  %i.iy = zext i8 %i.ix to i32
  %i.iz = add nsw i32 %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv222.i
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !27
  %i.jc = zext i8 %i.jb to i32
  %i.jd = sub i32 %i.iz, %i.jc
  %i.je = and i32 %i.jd, 65535
  store i32 %i.je, ptr %i.iu, align 4, !tbaa !8
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next223.i ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv.next223.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !27
  %i.jj = zext i8 %i.ji to i32
  %i.jk = add nsw i32 %i.jg, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.next223.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !27
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub i32 %i.jk, %i.jn
  %i.jp = and i32 %i.jo, 65535
  store i32 %i.jp, ptr %i.jf, align 4, !tbaa !8
  %indvars.iv.next223.i.1 = add nuw nsw i64 %indvars.iv222.i, 2 ; 2 uses
  %exitcond226.not.i.1 = icmp eq i64 %indvars.iv.next223.i.1, %.sroa.0.0.insert.ext.i.i
  br i1 %exitcond226.not.i.1, label %.preheader.i, label %.lr.ph183.i, !llvm.loop !182

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.preheader, %.lr.ph186.i
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i.1, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph186.i ], [ 0, %.lr.ph186.i.preheader ]
  %i.jq = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.jr = xor i64 %indvars.iv227.i, -1
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.jr
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !8
  %i.jt = load i32, ptr %i.fi, align 4, !tbaa !8
  %gep257.i = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i
  store i32 %i.jt, ptr %gep257.i, align 4, !tbaa !8
  %i.ju = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.jv = xor i64 %indvars.iv227.i, -2
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.jv
  store i32 %i.ju, ptr %i.jw, align 4, !tbaa !8
  %i.jx = load i32, ptr %i.fi, align 4, !tbaa !8
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i
  %gep257.i.1 = getelementptr i8, ptr %i.jy, i64 4
  store i32 %i.jx, ptr %gep257.i.1, align 4, !tbaa !8
  %indvars.iv.next228.i.1 = add nuw nsw i64 %indvars.iv227.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge187.i.unr-lcssa, label %.lr.ph186.i, !llvm.loop !183

._crit_edge187.i.unr-lcssa:                       ; preds = %.lr.ph186.i
  br i1 %lcmp.mod155.not, label %._crit_edge187.i, label %.lr.ph186.i.epil.preheader

.lr.ph186.i.epil.preheader:                       ; preds = %._crit_edge187.i.unr-lcssa, %.lr.ph186.i.preheader
  %indvars.iv227.i.epil.init = phi i64 [ 0, %.lr.ph186.i.preheader ], [ %indvars.iv.next228.i.1, %._crit_edge187.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.jz = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ka = xor i64 %indvars.iv227.i.epil.init, -1
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !8
  %i.kc = load i32, ptr %i.fi, align 4, !tbaa !8
  %gep257.i.epil = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %indvars.iv227.i.epil.init
  store i32 %i.kc, ptr %gep257.i.epil, align 4, !tbaa !8
  br label %._crit_edge187.i

._crit_edge187.i:                                 ; preds = %._crit_edge187.i.unr-lcssa, %.lr.ph186.i.epil.preheader
  %i.kd = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ke = mul nsw i32 %i.kd, %i.ac                ; 3 uses
  br i1 %.not170188.i, label %._crit_edge193.i, label %.lr.ph192.i.preheader

.lr.ph192.i.preheader:                            ; preds = %._crit_edge187.i
  br i1 %min.iters.check, label %.lr.ph192.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph192.i.preheader
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ke, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.kf, %vector.ph ], [ %i.kj, %vector.body ]
  %vec.phi38 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kk, %vector.body ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  %wide.load = load <4 x i32>, ptr %i.kh, align 4, !tbaa !8
  %wide.load39 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !8
  %i.kj = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.kk = add <4 x i32> %wide.load39, %vec.phi38  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.kk, %i.kj
  %i.km = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge193.i, label %.lr.ph192.i.preheader140

.lr.ph192.i.preheader140:                         ; preds = %.lr.ph192.i.preheader, %middle.block
  %indvars.iv232.i.ph = phi i64 [ 1, %.lr.ph192.i.preheader ], [ %i.fu, %middle.block ]
  %.0190.i.ph = phi i32 [ %i.ke, %.lr.ph192.i.preheader ], [ %i.km, %middle.block ]
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.preheader140, %.lr.ph192.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %.lr.ph192.i ], [ %indvars.iv232.i.ph, %.lr.ph192.i.preheader140 ] ; 2 uses
  %.0190.i = phi i32 [ %i.kp, %.lr.ph192.i ], [ %.0190.i.ph, %.lr.ph192.i.preheader140 ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv232.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !8
  %i.kp = add nsw i32 %i.ko, %.0190.i             ; 2 uses
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count230.i
  br i1 %exitcond236.not.i, label %._crit_edge193.i, label %.lr.ph192.i, !llvm.loop !185

._crit_edge193.i:                                 ; preds = %.lr.ph192.i, %middle.block, %._crit_edge187.i, %._crit_edge187.thread.i
  %.0.lcssa.i = phi i32 [ %i.ke, %._crit_edge187.i ], [ %i.it, %._crit_edge187.thread.i ], [ %i.km, %middle.block ], [ %i.kp, %.lr.ph192.i ] ; 3 uses
  %i.kq = load i8, ptr %i.hf, align 1, !tbaa !27
  %i.kr = zext i8 %i.kq to i32
  %i.ks = mul nuw nsw i32 %i.kr, 5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !27
  %i.kv = zext i8 %i.ku to i32
  %i.kw = add nuw nsw i32 %i.ks, %i.kv
  %i.kx = load i8, ptr %i.hd, align 1, !tbaa !27
  %i.ky = zext i8 %i.kx to i32
end_hunk_0
begin_hunk_1_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.bi = icmp slt i32 %.sroa.speculated318, %i.az
  br i1 %i.bi, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !324
  store i32 %.sroa.speculated318, ptr %16, align 4, !tbaa !65, !noalias !324
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 %i.az, ptr %i.bk, align 4, !tbaa !66, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !324
  store i64 9223372034707292160, ptr %17, align 8, !noalias !324
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !324
  %i.bl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.bm = sitofp i32 %i.ac to double
  %i.bn = insertelement <4 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bo, ptr %20, align 8, !tbaa !63, !alias.scope !325
  %i.bp = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.br, %bb.j ], [ %i.bq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ca

bb.l:                                             ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ca

bb.m:                                             ; preds = %bb.h, %_ZN2cvanIiEENS_5Rect_IT_EERKS3_S5_.exit
  %i.bt = icmp sgt i32 %.sroa.speculated, %i.bh
  br i1 %i.bt, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !326
  store i32 %i.bh, ptr %14, align 4, !tbaa !65, !noalias !326
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %.sroa.speculated, ptr %i.bv, align 4, !tbaa !66, !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19, !noalias !326
  store i64 9223372034707292160, ptr %15, align 8, !noalias !326
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !326
  %i.bw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.bx = sitofp i32 %i.ac to double
  %i.by = insertelement <4 x double> poison, double %i.bx, i64 0
  %i.bz = shufflevector <4 x double> %i.by, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.bz, ptr %22, align 8, !tbaa !63, !alias.scope !327
  %i.ca = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.q unwind label %bb.u       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.v

bb.r:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn69 = phi { ptr, i32 } [ %i.cc, %bb.s ], [ %i.cb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ca

bb.u:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ca

bb.v:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !328
  store i32 %i.az, ptr %12, align 4, !tbaa !65, !noalias !328
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.bh, ptr %i.cf, align 4, !tbaa !66, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !328
  store i64 9223372034707292160, ptr %13, align 8, !noalias !328
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %23, ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13)
          to label %bb.w unwind label %bb.am

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !329
  store i32 %i.az, ptr %10, align 4, !tbaa !65, !noalias !329
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.bh, ptr %i.ci, align 4, !tbaa !66, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !329
  store i64 9223372034707292160, ptr %11, align 8, !noalias !329
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.ch, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !330
  store i32 %i.az, ptr %8, align 4, !tbaa !65, !noalias !330
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bh, ptr %i.ck, align 4, !tbaa !66, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !330
  store i64 9223372034707292160, ptr %9, align 8, !noalias !330
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %i.cj, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.y unwind label %bb.ao

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !323, !nonnull !112, !align !113
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !331
  store i32 %i.az, ptr %6, align 4, !tbaa !65, !noalias !331
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.bh, ptr %i.cr, align 4, !tbaa !66, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !331
  store i64 9223372034707292160, ptr %7, align 8, !noalias !331
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %i.cq, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %_ZNK2cv3Mat8rowRangeEii.exit97 unwind label %bb.ap

_ZNK2cv3Mat8rowRangeEii.exit97:                   ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !331
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %26) #19
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK2cv3Mat8rowRangeEii.exit97, %bb.aa
  %i.cs = load i32, ptr %25, align 8, !tbaa !61
  %i.ct = and i32 %i.cs, 4095
  %i.cu = icmp eq i32 %i.ct, 3
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !323, !nonnull !112, !align !113 ; 5 uses
  %i.cw = sub i32 %i.h, %i.bh                     ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !332, !nonnull !112, !align !114 ; 10 uses
  %i.cz = load i32, ptr %1, align 4, !tbaa !65
  %i.da = sext i32 %i.cz to i64                   ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %24, i64 24
  %.val = load ptr, ptr %i.db, align 8, !tbaa !79 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %25, i64 24
  %.val86 = load ptr, ptr %i.dc, align 8, !tbaa !79 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %25, i64 128
  %.val87 = load i64, ptr %i.dd, align 8, !tbaa !84 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !20 ; 7 uses
  %i.dg = sdiv i32 %i.df, 2                       ; 31 uses
  %i.dh = add nsw i32 %i.dg, 1                    ; 12 uses
  %i.di = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.dh) ; 17 uses
  %i.dj = sub i32 0, %i.di                        ; 12 uses
  %i.dk = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dh) ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22 ; 44 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !21 ; 13 uses
  %i.dp = add i32 %i.do, %i.dm                    ; 3 uses
  %i.dq = add i32 %i.dp, -1                       ; 18 uses
  %i.dr = call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 12 uses
  %i.ds = call i32 @llvm.smin.i32(i32 %i.dq, i32 0) ; 8 uses
  %i.dt = sub i32 0, %i.ds                        ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !59 ; 11 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !60 ; 16 uses
  %i.dy = sub i32 %i.dv, %i.dm                    ; 3 uses
  %i.dz = add i32 %i.ds, %i.dy                    ; 12 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !23 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !24 ; 4 uses
  br i1 %i.cu, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %.tr.i = trunc i32 %i.do to i16
  %i.ee = shl i16 %.tr.i, 4
  %i.ef = add i16 %i.ee, -16                      ; 14 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  %i.ei = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.ej = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = zext i32 %i.dt to i64                   ; 3 uses
  %i.em = getelementptr i8, ptr %.val, i64 %i.el  ; 2 uses
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !84 ; 3 uses
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = lshr i64 %.val87, 1                     ; 4 uses
  %i.eq = add i32 %i.dx, %i.dk                    ; 7 uses
  %i.er = add i32 %i.eq, %i.di                    ; 2 uses
  %i.es = mul i32 %i.er, %i.dm                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.et = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.eu, null
  %i.ev = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = shl i64 %i.ew, 30
  %i.ey = ashr i64 %i.ex, 32
  %i.ez = select i1 %.not.i, i64 0, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.fb = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.da
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !91 ; 6 uses
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %i.ff = getelementptr i8, ptr %i.fd, i64 4      ; 19 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.da
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !91 ; 5 uses
  %i.fk = ptrtoaddr ptr %i.fj to i64
  %i.fl = mul i32 %i.dh, %i.dm
  %i.fm = sext i32 %i.fl to i64                   ; 8 uses
  %i.fn = getelementptr [4 x i8], ptr %i.fj, i64 %i.fm ; 10 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.da
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !91
  %i.fs = sext i32 %i.dh to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fs ; 15 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !94
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.da
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !28 ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fm
  %i.fz = add nsw i32 %i.dm, 2
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fd, i8 0, i64 %i.gb, i1 false)
  %i.gc = mul i32 %i.di, %i.dm
  %i.gd = sext i32 %i.gc to i64                   ; 12 uses
  %i.ge = sub nsw i64 0, %i.gd                    ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr %i.fn, i64 %i.ge ; 8 uses
  %i.gg = add i32 %i.df, 2
  %i.gh = add i32 %i.gg, %i.dx                    ; 2 uses
  %i.gi = mul nsw i32 %i.gh, %i.dm
  %i.gj = sext i32 %i.gi to i64
  %i.gk = shl nsw i64 %i.gj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gf, i8 0, i64 %i.gk, i1 false)
  %i.gl = sext i32 %i.di to i64
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.gm
  %i.go = sext i32 %i.gh to i64
  %i.gp = shl nsw i64 %i.go, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gn, i8 0, i64 %i.gp, i1 false)
  %i.gq = xor i32 %i.dg, -1                       ; 7 uses
  %invariant.gep.i = getelementptr i8, ptr %i.fy, i64 %i.ge ; 3 uses
  %i.gr = icmp sgt i32 %i.df, -2                  ; 2 uses
  br i1 %i.gr, label %.lr.ph.i, label %.preheader43.i

.lr.ph.i:                                         ; preds = %bb.ac
  %i.gs = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.gt = xor i32 %i.dr, -1
  %i.gu = add i32 %i.dv, %i.gt                    ; 2 uses
  %i.gv = mul i32 %i.di, %i.eo
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = sub nsw i64 0, %i.gw                    ; 2 uses
  %invariant.gep54.i = getelementptr i8, ptr %i.ek, i64 %i.gx ; 2 uses
  %invariant.gep56.i = getelementptr i8, ptr %i.em, i64 %i.gx
  %i.gy = icmp sgt i32 %i.eq, %i.dj
  %i.gz = sext i32 %i.dm to i64                   ; 3 uses
  %sext461.i = shl i64 %i.en, 32
  %i.ha = ashr exact i64 %sext461.i, 32           ; 7 uses
  br i1 %i.gy, label %.lr.ph.split.i, label %.preheader43.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.hb = icmp sgt i32 %i.dm, 0
  %i.hc = sext i32 %i.dj to i64                   ; 7 uses
  br i1 %i.hb, label %.lr.ph51.us.preheader.i, label %.lr.ph51.preheader.i

.lr.ph51.preheader.i:                             ; preds = %.lr.ph.split.i
  %smax.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count.i = sext i32 %i.eq to i64      ; 3 uses
  %i.hd = sub nsw i64 %wide.trip.count.i, %i.hc
  %xtraiter933 = and i64 %i.hd, 1
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  %i.he = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.hc ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.hc, 1
  %i.hf = add nsw i64 %wide.trip.count.i, -1
  %i.hg = icmp eq i64 %i.hf, %i.hc
  br label %.lr.ph51.i

.lr.ph51.us.preheader.i:                          ; preds = %.lr.ph.split.i
  %i.hh = sext i32 %i.gq to i64
  %smax149.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count150.i = zext nneg i32 %smax149.i to i64
  %wide.trip.count144.i = sext i32 %i.eq to i64   ; 2 uses
  %wide.trip.count139.i = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.hi = xor i64 %i.hc, -1
  %i.hj = add nsw i64 %i.hi, %wide.trip.count144.i ; 2 uses
  %i.hk = mul nsw i64 %i.hj, %i.gz                ; 2 uses
  %i.hl = add i64 %i.hk, %i.fm
  %i.hm = add i64 %i.hl, %wide.trip.count139.i
  %i.hn = sub i64 %i.hm, %i.gd
  %scevgep616 = getelementptr i8, ptr %i.fx, i64 %i.hn
  %33 = mul i32 %i.dm, %i.er
  %i.ho = add i64 %i.hk, %i.fm
  %i.hp = add i64 %i.ho, %wide.trip.count139.i
  %i.hq = sub i64 %i.hp, %i.gd
  %i.hr = shl i64 %i.hq, 2
  %scevgep619 = getelementptr i8, ptr %i.fj, i64 %i.hr ; 2 uses
  %i.hs = mul i64 %i.hj, %i.ha
  %i.ht = add i64 %i.hs, %wide.trip.count139.i
  %i.hu = add i64 %i.ht, %i.el
  %i.hv = sub i64 %i.hu, %i.gw
  %scevgep624 = getelementptr i8, ptr %.val, i64 %i.hv
  %34 = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %min.iters.check640.a = icmp ult i32 %i.dm, 8
  %stride.check632 = icmp slt i64 %i.ha, 0
  %n.vec642 = and i64 %wide.trip.count139.i, 2147483644 ; 3 uses
  %cmp.n651 = icmp eq i64 %n.vec642, %wide.trip.count139.i
  %xtraiter936 = and i64 %wide.trip.count139.i, 1
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  %i.hw = add nsw i64 %wide.trip.count139.i, -1
  br label %.lr.ph51.us.i

.lr.ph51.us.i:                                    ; preds = %._crit_edge52.split.us.us.i, %.lr.ph51.us.preheader.i
  %indvar613 = phi i32 [ %indvar.next614, %._crit_edge52.split.us.us.i ], [ 0, %.lr.ph51.us.preheader.i ] ; 3 uses
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %._crit_edge52.split.us.us.i ], [ %i.hh, %.lr.ph51.us.preheader.i ] ; 2 uses
  %i.hx = mul i32 %33, %indvar613
  %i.hy = sext i32 %i.hx to i64
  %scevgep617 = getelementptr i8, ptr %scevgep616, i64 %i.hy ; 2 uses
  %i.hz = add i32 %indvar613, %i.gq
  %i.ia = call i32 @llvm.smax.i32(i32 %34, i32 %i.hz)
  %i.ib = call i32 @llvm.smin.i32(i32 %i.ia, i32 %i.dz)
  %smin622 = sext i32 %i.ib to i64
  %scevgep625 = getelementptr i8, ptr %scevgep624, i64 %smin622 ; 2 uses
  %i.ic = trunc i64 %indvars.iv146.i to i32       ; 3 uses
  %i.id = add i32 %i.dh, %i.ic
  %i.ie = mul i32 %i.id, %i.es
  %i.if = sext i32 %i.ie to i64
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.if ; 3 uses
  %.sroa.speculated15.us.i = call i32 @llvm.smax.i32(i32 %i.ic, i32 %i.gs)
  %.sroa.speculated11.us.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.us.i)
  %i.ig = sext i32 %.sroa.speculated11.us.i to i64
  %gep55.us.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.ig
  %.sroa.speculated6.us.i = call i32 @llvm.smax.i32(i32 %i.ic, i32 %i.ds)
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i)
  %i.ih = sext i32 %.sroa.speculated.us.i to i64
  %gep57.us.i = getelementptr i8, ptr %invariant.gep56.i, i64 %i.ih ; 3 uses
  %bound0626 = icmp ult ptr %gep.us.i, %scevgep619
  %bound1627 = icmp ult ptr %i.gf, %scevgep617
  %found.conflict628 = and i1 %bound0626, %bound1627
  %bound0629 = icmp ult ptr %gep.us.i, %scevgep625
  %bound1630 = icmp ult ptr %gep57.us.i, %scevgep617
  %found.conflict631 = and i1 %bound0629, %bound1630
  %i.ii = or i1 %found.conflict631, %stride.check632
  %conflict.rdx633 = or i1 %found.conflict628, %i.ii
  %bound0634 = icmp ult ptr %i.gf, %scevgep625
  %bound1635 = icmp ult ptr %gep57.us.i, %scevgep619
  %found.conflict636 = and i1 %bound0634, %bound1635
  %conflict.rdx638 = or i1 %found.conflict636, %conflict.rdx633
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph51.us.i
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.us.us.i ], [ %i.hc, %.lr.ph51.us.i ] ; 2 uses
  %.041948.us.us.i = phi ptr [ %i.kj, %._crit_edge.us.us.i ], [ %gep57.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042247.us.us.i = phi ptr [ %i.ki, %._crit_edge.us.us.i ], [ %gep55.us.i, %.lr.ph51.us.i ] ; 2 uses
  %.042446.us.us.i = phi ptr [ %i.kh, %._crit_edge.us.us.i ], [ %gep.us.i, %.lr.ph51.us.i ] ; 5 uses
  %.042645.us.us.i = phi ptr [ %i.kg, %._crit_edge.us.us.i ], [ %i.gf, %.lr.ph51.us.i ] ; 5 uses
  %i.ij = load i8, ptr %.042247.us.us.i, align 1, !tbaa !27 ; 2 uses
  %i.ik = zext i8 %i.ij to i32                    ; 4 uses
  %brmerge = select i1 %min.iters.check640.a, i1 true, i1 %conflict.rdx638
  br i1 %brmerge, label %scalar.ph639.preheader, label %vector.ph641

vector.ph641:                                     ; preds = %.lr.ph.us.us.i
  %broadcast.splatinsert643 = insertelement <4 x i32> poison, i32 %i.ik, i64 0
  %broadcast.splat644 = shufflevector <4 x i32> %broadcast.splatinsert643, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body645

vector.body645:                                   ; preds = %vector.body645, %vector.ph641
  %index646 = phi i64 [ 0, %vector.ph641 ], [ %index.next649, %vector.body645 ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %index646
  %wide.load647 = load <4 x i8>, ptr %i.il, align 1, !tbaa !27, !alias.scope !333
  %i.im = zext <4 x i8> %wide.load647 to <4 x i32>
  %i.in = sub nsw <4 x i32> %broadcast.splat644, %i.im
  %i.io = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.in, i1 true) ; 2 uses
  %i.ip = trunc nuw <4 x i32> %i.io to <4 x i8>
  %i.iq = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %index646
  store <4 x i8> %i.ip, ptr %i.iq, align 1, !tbaa !27, !alias.scope !334, !noalias !335
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %index646 ; 2 uses
  %wide.load648 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !8, !alias.scope !336, !noalias !333
  %i.is = add nsw <4 x i32> %i.io, %wide.load648
  store <4 x i32> %i.is, ptr %i.ir, align 4, !tbaa !8, !alias.scope !336, !noalias !333
  %index.next649 = add nuw i64 %index646, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.it, label %middle.block650, label %vector.body645, !llvm.loop !225

middle.block650:                                  ; preds = %vector.body645
  br i1 %cmp.n651, label %._crit_edge.us.us.i, label %scalar.ph639.preheader

scalar.ph639.preheader:                           ; preds = %.lr.ph.us.us.i, %middle.block650
  %indvars.iv136.i.ph = phi i64 [ %n.vec642, %middle.block650 ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  br i1 %lcmp.mod937.not, label %scalar.ph639.prol.loopexit, label %scalar.ph639.prol

scalar.ph639.prol:                                ; preds = %scalar.ph639.preheader
  %i.iu = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i.ph
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !27
  %i.iw = zext i8 %i.iv to i32
  %i.ix = sub nsw i32 %i.ik, %i.iw
  %i.iy = call i32 @llvm.abs.i32(i32 %i.ix, i1 true) ; 2 uses
  %i.iz = trunc nuw i32 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i.ph
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !27
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i.ph ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8
  %i.jd = add nsw i32 %i.iy, %i.jc
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !8
  %indvars.iv.next137.i.prol = or disjoint i64 %indvars.iv136.i.ph, 1
  br label %scalar.ph639.prol.loopexit

scalar.ph639.prol.loopexit:                       ; preds = %scalar.ph639.prol, %scalar.ph639.preheader
  %indvars.iv136.i.unr = phi i64 [ %indvars.iv136.i.ph, %scalar.ph639.preheader ], [ %indvars.iv.next137.i.prol, %scalar.ph639.prol ]
  %i.je = icmp eq i64 %indvars.iv136.i.ph, %i.hw
  br i1 %i.je, label %._crit_edge.us.us.i, label %scalar.ph639

scalar.ph639:                                     ; preds = %scalar.ph639.prol.loopexit, %scalar.ph639
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.1, %scalar.ph639 ], [ %indvars.iv136.i.unr, %scalar.ph639.prol.loopexit ] ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv136.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !27
  %i.jh = zext i8 %i.jg to i32
  %i.ji = sub nsw i32 %i.ik, %i.jh
  %i.jj = call i32 @llvm.abs.i32(i32 %i.ji, i1 true) ; 2 uses
  %i.jk = trunc nuw i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv136.i
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !27
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv136.i ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !8
  %i.jo = add nsw i32 %i.jj, %i.jn
  store i32 %i.jo, ptr %i.jm, align 4, !tbaa !8
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.041948.us.us.i, i64 %indvars.iv.next137.i
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !27
  %i.jr = zext i8 %i.jq to i32
  %i.js = sub nsw i32 %i.ik, %i.jr
  %i.jt = call i32 @llvm.abs.i32(i32 %i.js, i1 true) ; 2 uses
  %i.ju = trunc nuw i32 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %indvars.iv.next137.i
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !27
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %indvars.iv.next137.i ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !8
  %i.jy = add nsw i32 %i.jt, %i.jx
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !8
  %indvars.iv.next137.i.1 = add nuw nsw i64 %indvars.iv136.i, 2 ; 2 uses
  %exitcond140.not.i.1 = icmp eq i64 %indvars.iv.next137.i.1, %wide.trip.count139.i
  br i1 %exitcond140.not.i.1, label %._crit_edge.us.us.i, label %scalar.ph639, !llvm.loop !226

._crit_edge.us.us.i:                              ; preds = %scalar.ph639.prol.loopexit, %scalar.ph639, %middle.block650
  %i.jz = zext i8 %i.ij to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !27
  %i.kc = zext i8 %i.kb to i32
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv141.i ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !8
  %i.kf = add nsw i32 %i.ke, %i.kc
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !8
  %indvars.iv.next142.i = add nsw i64 %indvars.iv141.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i, i64 %i.gz
  %i.kh = getelementptr inbounds nuw i8, ptr %.042446.us.us.i, i64 %i.gz
  %i.ki = getelementptr inbounds i8, ptr %.042247.us.us.i, i64 %i.ha
  %i.kj = getelementptr inbounds i8, ptr %.041948.us.us.i, i64 %i.ha
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next142.i, %wide.trip.count144.i
  br i1 %exitcond145.not.i, label %._crit_edge52.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !227

._crit_edge52.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next147.i, %wide.trip.count150.i
  %indvar.next614 = add i32 %indvar613, 1
  br i1 %exitcond151.not.i, label %.preheader43.i, label %.lr.ph51.us.i, !llvm.loop !228

.preheader43.i:                                   ; preds = %._crit_edge52.split.i, %._crit_edge52.split.us.us.i, %.lr.ph.i, %bb.ac
  %i.kk = icmp sgt i32 %i.dx, 0                   ; 2 uses
  br i1 %i.kk, label %.preheader42.lr.ph.i, label %._crit_edge67.i

.preheader42.lr.ph.i:                             ; preds = %.preheader43.i
  %i.kl = icmp sgt i32 %i.dq, 0
  %i.km = add nuw i32 %i.dr, 1
  %i.kn = add i32 %i.km, %i.dz                    ; 3 uses
  %i.ko = icmp slt i32 %i.kn, %i.dv               ; 2 uses
  br i1 %i.kl, label %.preheader42.lr.ph.split.us.i, label %.preheader42.lr.ph.split.i

.preheader42.lr.ph.split.us.i:                    ; preds = %.preheader42.lr.ph.i
  br i1 %i.ko, label %.preheader42.us.us.preheader.i, label %.preheader42.us.preheader.i

.preheader42.us.preheader.i:                      ; preds = %.preheader42.lr.ph.split.us.i
  %sext260.i = shl i64 %i.ep, 32
  %i.kp = ashr exact i64 %sext260.i, 32
  %wide.trip.count169.i = zext nneg i32 %i.dx to i64
  %wide.trip.count164.i = zext nneg i32 %i.dq to i64 ; 6 uses
  %min.iters.check674 = icmp ult i32 %i.dq, 4
  %min.iters.check676 = icmp ult i32 %i.dq, 16
  %i.kq = and i64 %wide.trip.count164.i, 12
  %n.vec678.a = and i64 %wide.trip.count164.i, 2147483632 ; 4 uses
  %broadcast.splatinsert679.a = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat680.a = shufflevector <8 x i16> %broadcast.splatinsert679.a, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n685.a = icmp eq i64 %n.vec678.a, %wide.trip.count164.i
  %min.epilog.iters.check690 = icmp eq i64 %i.kq, 0
  %n.vec692.a = and i64 %wide.trip.count164.i, 2147483644 ; 3 uses
  %broadcast.splatinsert693.a = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat694.a = shufflevector <4 x i16> %broadcast.splatinsert693.a, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n699.a = icmp eq i64 %n.vec692.a, %wide.trip.count164.i
  br label %iter.check687

.preheader42.us.us.preheader.i:                   ; preds = %.preheader42.lr.ph.split.us.i
  %i.kr = sext i32 %i.kn to i64                   ; 5 uses
  %sext261.i = shl i64 %i.ep, 32
  %i.ks = ashr exact i64 %sext261.i, 32
  %wide.trip.count184.i = zext nneg i32 %i.dx to i64
  %wide.trip.count174.i = zext nneg i32 %i.dq to i64 ; 6 uses
  %i.kt = xor i32 %i.do, -1
  %i.ku = zext i32 %i.kt to i64
  %i.kv = add nuw nsw i64 %i.ku, 1                ; 5 uses
  %min.iters.check731 = icmp ult i32 %i.dq, 4
  %min.iters.check733 = icmp ult i32 %i.dq, 16
  %i.kw = and i64 %wide.trip.count174.i, 12
  %n.vec735.a = and i64 %wide.trip.count174.i, 2147483632 ; 4 uses
  %broadcast.splatinsert736.a = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat737.a = shufflevector <8 x i16> %broadcast.splatinsert736.a, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n742.a = icmp eq i64 %n.vec735.a, %wide.trip.count174.i
  %min.epilog.iters.check747 = icmp eq i64 %i.kw, 0
  %n.vec749 = and i64 %wide.trip.count174.i, 2147483644 ; 3 uses
  %broadcast.splatinsert750 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat751 = shufflevector <4 x i16> %broadcast.splatinsert750, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n756 = icmp eq i64 %n.vec749, %wide.trip.count174.i
  %min.iters.check702 = icmp ugt i32 %i.do, -4
  %min.iters.check704 = icmp ugt i32 %i.do, -16
  %i.kx = and i64 %i.kv, 12
  %n.vec706 = and i64 %i.kv, 8589934576           ; 4 uses
  %i.ky = add nsw i64 %n.vec706, %i.kr
  %broadcast.splatinsert707 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat708 = shufflevector <8 x i16> %broadcast.splatinsert707, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n713 = icmp eq i64 %i.kv, %n.vec706
  %min.epilog.iters.check719 = icmp eq i64 %i.kx, 0
  %n.vec721 = and i64 %i.kv, 8589934588           ; 3 uses
  %i.kz = add nsw i64 %n.vec721, %i.kr
  %broadcast.splatinsert722 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat723 = shufflevector <4 x i16> %broadcast.splatinsert722, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n728 = icmp eq i64 %i.kv, %n.vec721
  br label %iter.check744

iter.check744:                                    ; preds = %._crit_edge65.us.us.i, %.preheader42.us.us.preheader.i
  %indvars.iv181.i = phi i64 [ 0, %.preheader42.us.us.preheader.i ], [ %indvars.iv.next182.i, %._crit_edge65.us.us.i ] ; 2 uses
  %i.la = mul nsw i64 %indvars.iv181.i, %i.ks
  %invariant.gep270.i = getelementptr [2 x i8], ptr %.val86, i64 %i.la ; 6 uses
  br i1 %min.iters.check731, label %vec.epilog.scalar.ph745.preheader, label %vector.main.loop.iter.check732

vector.main.loop.iter.check732:                   ; preds = %iter.check744
  br i1 %min.iters.check733, label %vec.epilog.ph748, label %vector.body738

vector.body738:                                   ; preds = %vector.main.loop.iter.check732, %vector.body738
end_hunk_1
begin_hunk_2_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.lm = icmp eq i64 %index.next683.a, %n.vec678.a
  br i1 %i.lm, label %middle.block684, label %vector.body681, !llvm.loop !236

middle.block684:                                  ; preds = %vector.body681
  br i1 %cmp.n685.a, label %._crit_edge.us.i, label %vec.epilog.iter.check689

vec.epilog.iter.check689:                         ; preds = %middle.block684
  br i1 %min.epilog.iters.check690, label %vec.epilog.scalar.ph688.preheader, label %vec.epilog.ph691, !prof !339

vec.epilog.ph691:                                 ; preds = %vector.main.loop.iter.check675, %vec.epilog.iter.check689
  %vec.epilog.resume.val686 = phi i64 [ %n.vec678.a, %vec.epilog.iter.check689 ], [ 0, %vector.main.loop.iter.check675 ]
  br label %vec.epilog.vector.body695

vec.epilog.vector.body695:                        ; preds = %vec.epilog.vector.body695, %vec.epilog.ph691
  %index696 = phi i64 [ %vec.epilog.resume.val686, %vec.epilog.ph691 ], [ %index.next697, %vec.epilog.vector.body695 ] ; 2 uses
  %i.ln = getelementptr [2 x i8], ptr %invariant.gep268.i, i64 %index696
  store <4 x i16> %broadcast.splat694.a, ptr %i.ln, align 2, !tbaa !338
  %index.next697 = add nuw i64 %index696, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next697, %n.vec692.a
  br i1 %i.lo, label %vec.epilog.middle.block698, label %vec.epilog.vector.body695, !llvm.loop !237

vec.epilog.middle.block698:                       ; preds = %vec.epilog.vector.body695
  br i1 %cmp.n699.a, label %._crit_edge.us.i, label %vec.epilog.scalar.ph688.preheader

vec.epilog.scalar.ph688.preheader:                ; preds = %iter.check687, %vec.epilog.iter.check689, %vec.epilog.middle.block698
  %indvars.iv161.i.ph = phi i64 [ 0, %iter.check687 ], [ %n.vec678.a, %vec.epilog.iter.check689 ], [ %n.vec692.a, %vec.epilog.middle.block698 ]
  br label %vec.epilog.scalar.ph688

vec.epilog.scalar.ph688:                          ; preds = %vec.epilog.scalar.ph688.preheader, %vec.epilog.scalar.ph688
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %vec.epilog.scalar.ph688 ], [ %indvars.iv161.i.ph, %vec.epilog.scalar.ph688.preheader ] ; 2 uses
  %gep269.i = getelementptr [2 x i8], ptr %invariant.gep268.i, i64 %indvars.iv161.i
  store i16 %i.ef, ptr %gep269.i, align 2, !tbaa !338
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %._crit_edge.us.i, label %vec.epilog.scalar.ph688, !llvm.loop !238

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph688, %vec.epilog.middle.block698, %middle.block684
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count169.i
  br i1 %exitcond170.not.i, label %._crit_edge67.i, label %iter.check687, !llvm.loop !235

.preheader42.lr.ph.split.i:                       ; preds = %.preheader42.lr.ph.i
  br i1 %i.ko, label %.preheader42.preheader.i, label %._crit_edge67.i

.preheader42.preheader.i:                         ; preds = %.preheader42.lr.ph.split.i
  %i.lp = sext i32 %i.kn to i64                   ; 5 uses
  %sext259.i = shl i64 %i.ep, 32
  %i.lq = ashr exact i64 %sext259.i, 32
  %wide.trip.count159.i = zext nneg i32 %i.dx to i64
  %i.lr = xor i32 %i.do, -1
  %i.ls = zext i32 %i.lr to i64
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 5 uses
  %min.iters.check654 = icmp ugt i32 %i.do, -4
  %min.iters.check655 = icmp ugt i32 %i.do, -16
  %i.lu = and i64 %i.lt, 12
  %n.vec657 = and i64 %i.lt, 8589934576           ; 4 uses
  %i.lv = add nsw i64 %n.vec657, %i.lp
  %broadcast.splatinsert658 = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat659 = shufflevector <8 x i16> %broadcast.splatinsert658, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n664 = icmp eq i64 %i.lt, %n.vec657
  %min.epilog.iters.check = icmp eq i64 %i.lu, 0
  %n.vec666 = and i64 %i.lt, 8589934588           ; 3 uses
  %i.lw = add nsw i64 %n.vec666, %i.lp
  %broadcast.splatinsert667 = insertelement <4 x i16> poison, i16 %i.ef, i64 0
  %broadcast.splat668 = shufflevector <4 x i16> %broadcast.splatinsert667, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n671 = icmp eq i64 %i.lt, %n.vec666
  br label %iter.check

.lr.ph51.i:                                       ; preds = %._crit_edge52.split.i, %.lr.ph51.preheader.i
  %storemerge53.i = phi i32 [ %i.mz, %._crit_edge52.split.i ], [ %i.gq, %.lr.ph51.preheader.i ] ; 2 uses
  %.sroa.speculated15.i = call i32 @llvm.smax.i32(i32 %storemerge53.i, i32 %i.gs)
  %.sroa.speculated11.i = call i32 @llvm.smin.i32(i32 %i.gu, i32 %.sroa.speculated15.i)
  %i.lx = sext i32 %.sroa.speculated11.i to i64
  %gep55.i = getelementptr i8, ptr %invariant.gep54.i, i64 %i.lx ; 3 uses
  br i1 %lcmp.mod934.not, label %.prol.loopexit932, label %.prol.loopexit932.unr-lcssa

.prol.loopexit932.unr-lcssa:                      ; preds = %.lr.ph51.i
  %i.ly = load i8, ptr %gep55.i, align 1, !tbaa !27
  %i.lz = zext i8 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !27
  %i.mc = zext i8 %i.mb to i32
  %i.md = load i32, ptr %i.he, align 4, !tbaa !8
  %i.me = add nsw i32 %i.md, %i.mc
  store i32 %i.me, ptr %i.he, align 4, !tbaa !8
  %i.mf = getelementptr inbounds i8, ptr %gep55.i, i64 %i.ha
  br label %.prol.loopexit932

.prol.loopexit932:                                ; preds = %.prol.loopexit932.unr-lcssa, %.lr.ph51.i
  %indvars.iv.i.unr = phi i64 [ %i.hc, %.lr.ph51.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit932.unr-lcssa ]
  %.042247.i.unr = phi ptr [ %gep55.i, %.lr.ph51.i ], [ %i.mf, %.prol.loopexit932.unr-lcssa ]
  br i1 %i.hg, label %._crit_edge52.split.i, label %.lr.ph51.i.new

.lr.ph51.i.new:                                   ; preds = %.prol.loopexit932, %.lr.ph51.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph51.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit932 ] ; 3 uses
  %.042247.i = phi ptr [ %i.my, %.lr.ph51.i.new ], [ %.042247.i.unr, %.prol.loopexit932 ] ; 2 uses
  %i.mg = load i8, ptr %.042247.i, align 1, !tbaa !27
  %i.mh = zext i8 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !27
  %i.mk = zext i8 %i.mj to i32
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv.i ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !8
  %i.mn = add nsw i32 %i.mm, %i.mk
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !8
  %i.mo = getelementptr inbounds i8, ptr %.042247.i, i64 %i.ha ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !27
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !27
  %i.mt = zext i8 %i.ms to i32
  %i.mu = getelementptr [4 x i8], ptr %i.ft, i64 %indvars.iv.i
  %i.mv = getelementptr i8, ptr %i.mu, i64 4      ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !8
  %i.mx = add nsw i32 %i.mw, %i.mt
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mo, i64 %i.ha
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge52.split.i, label %.lr.ph51.i.new, !llvm.loop !227

._crit_edge52.split.i:                            ; preds = %.lr.ph51.i.new, %.prol.loopexit932
  %i.mz = add nsw i32 %storemerge53.i, 1          ; 2 uses
  %exitcond135.not.i = icmp eq i32 %i.mz, %smax.i
  br i1 %exitcond135.not.i, label %.preheader43.i, label %.lr.ph51.i, !llvm.loop !228

iter.check:                                       ; preds = %._crit_edge65.i, %.preheader42.preheader.i
  %indvars.iv156.i = phi i64 [ 0, %.preheader42.preheader.i ], [ %indvars.iv.next157.i, %._crit_edge65.i ] ; 2 uses
  %i.na = mul nsw i64 %indvars.iv156.i, %i.lq
  %invariant.gep267.i = getelementptr [2 x i8], ptr %.val86, i64 %i.na ; 3 uses
  br i1 %min.iters.check654, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check655, label %vec.epilog.ph, label %vector.ph656

vector.ph656:                                     ; preds = %vector.main.loop.iter.check
  %invariant.gep965 = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %i.lp
  br label %vector.body660

vector.body660:                                   ; preds = %vector.ph656, %vector.body660
  %index661 = phi i64 [ 0, %vector.ph656 ], [ %index.next662, %vector.body660 ] ; 2 uses
  %gep966 = getelementptr [2 x i8], ptr %invariant.gep965, i64 %index661 ; 2 uses
  %i.nb = getelementptr i8, ptr %gep966, i64 16
  store <8 x i16> %broadcast.splat659, ptr %gep966, align 2, !tbaa !338
  store <8 x i16> %broadcast.splat659, ptr %i.nb, align 2, !tbaa !338
  %index.next662 = add nuw i64 %index661, 16      ; 2 uses
  %i.nc = icmp eq i64 %index.next662, %n.vec657
  br i1 %i.nc, label %middle.block663, label %vector.body660, !llvm.loop !239

middle.block663:                                  ; preds = %vector.body660
  br i1 %cmp.n664, label %._crit_edge65.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block663
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !339

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec657, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep967 = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %i.lp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index669 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next670, %vec.epilog.vector.body ] ; 2 uses
  %gep968 = getelementptr [2 x i8], ptr %invariant.gep967, i64 %index669
  store <4 x i16> %broadcast.splat668, ptr %gep968, align 2, !tbaa !338
  %index.next670 = add nuw i64 %index669, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next670, %n.vec666
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n671, label %._crit_edge65.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv152.i.ph = phi i64 [ %i.lp, %iter.check ], [ %i.lv, %vec.epilog.iter.check ], [ %i.lw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %vec.epilog.scalar.ph ], [ %indvars.iv152.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep267.i, i64 %indvars.iv152.i
  store i16 %i.ef, ptr %gep.i, align 2, !tbaa !338
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next153.i to i32
  %exitcond155.not.i = icmp eq i32 %i.dv, %lftr.wideiv.i
  br i1 %exitcond155.not.i, label %._crit_edge65.i, label %vec.epilog.scalar.ph, !llvm.loop !241

._crit_edge65.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block663
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count159.i
  br i1 %exitcond160.not.i, label %._crit_edge67.i, label %iter.check, !llvm.loop !235

._crit_edge67.i:                                  ; preds = %._crit_edge65.i, %._crit_edge.us.i, %._crit_edge65.us.us.i, %.preheader42.lr.ph.split.i, %.preheader43.i
  %.not453117.i = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %._crit_edge67.i
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %.val86, i64 %i.ej
  %i.nf = add nsw i32 %i.df, 1                    ; 2 uses
  %i.ng = sub nsw i32 0, %i.dr                    ; 2 uses
  %i.nh = xor i32 %i.dr, -1
  %i.ni = add i32 %i.dv, %i.nh                    ; 2 uses
  %i.nj = mul i32 %i.di, %i.eo
  %i.nk = sext i32 %i.nj to i64                   ; 2 uses
  %i.nl = sub nsw i64 0, %i.nk                    ; 2 uses
  %invariant.gep123.i = getelementptr i8, ptr %i.ek, i64 %i.nl ; 2 uses
  %invariant.gep127.i = getelementptr i8, ptr %i.em, i64 %i.nl
  %i.nm = icmp sgt i32 %i.eq, %i.dj
  %i.nn = icmp sgt i32 %i.dm, 0                   ; 4 uses
  %i.no = sext i32 %i.dm to i64                   ; 7 uses
  %sext.i = shl i64 %i.en, 32
  %i.np = ashr exact i64 %sext.i, 32              ; 5 uses
  %.not45580.i = icmp sgt i32 %i.cw, %i.dg
  %i.nq = sext i32 %i.eq to i64                   ; 3 uses
  %i.nr = getelementptr [4 x i8], ptr %i.ft, i64 %i.nq
  %i.ns = getelementptr i8, ptr %i.nr, i64 -4
  %i.nt = icmp slt i32 %i.gq, %i.dj
  %i.nu = sext i32 %i.dj to i64                   ; 5 uses
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.nu
  %i.nw = add nsw i32 %i.dg, 2
  %i.nx = sub i32 %i.nw, %i.di                    ; 6 uses
  %i.ny = sub i32 1, %i.di                        ; 3 uses
  %i.nz = mul i32 %i.ny, %i.dm
  %i.oa = sext i32 %i.nz to i64                   ; 2 uses
  %i.ob = getelementptr [4 x i8], ptr %i.fn, i64 %i.oa ; 2 uses
  %i.oc = icmp sge i32 %i.ny, %i.dg
  %i.od = icmp eq i32 %i.dm, 0
  %i.oe = add nsw i32 %i.eq, -1
  %i.of = icmp sgt i32 %i.ed, 0
  %i.og = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.oh = getelementptr [4 x i8], ptr %i.ff, i64 %i.no ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 -8
  %smin.i = sext i32 %i.dk to i64                 ; 3 uses
  %i.oj = sext i32 %i.dx to i64
  %i.ok = sext i32 %i.gq to i64                   ; 6 uses
  %smax219.i = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.ol = sext i32 %i.dg to i64
  %i.om = shl i64 %i.ep, 32
  %i.on = ashr exact i64 %i.om, 32                ; 3 uses
  %i.oo = add i32 %i.dy, 1
  %i.op = add i32 %i.oo, %i.ds
  %wide.trip.count240.i = zext i32 %i.op to i64
  %wide.trip.count189.i = zext i32 %i.dm to i64   ; 21 uses
  %invariant.gep274.i = getelementptr [4 x i8], ptr %i.ft, i64 %i.oj ; 2 uses
  %brmerge.i = select i1 %i.oc, i1 true, i1 %i.od
  %wide.trip.count220.i = zext i32 %smax219.i to i64 ; 2 uses
  %wide.trip.count235.i = zext nneg i32 %i.dx to i64
  %i.oq = shl nuw nsw i64 %wide.trip.count189.i, 2
  %i.or = getelementptr i8, ptr %i.fd, i64 %i.oq
  %scevgep775 = getelementptr i8, ptr %i.or, i64 4
  %i.os = add i32 %i.dg, %i.di
  %i.ot = add i32 %i.os, -2
  %i.ou = zext i32 %i.ot to i64
  %i.ov = mul nsw i64 %i.no, %i.ou
  %i.ow = add i64 %i.ov, %i.fm
  %i.ox = add i64 %i.ow, %i.oa
  %i.oy = add i64 %i.ox, %wide.trip.count189.i
  %i.oz = shl i64 %i.oy, 2
  %scevgep776 = getelementptr i8, ptr %i.fj, i64 %i.oz
  %i.pa = shl nsw i64 %i.fm, 2
  %i.pb = add i64 %i.pa, %i.fk
  %i.pc = shl nsw i64 %i.gd, 2
  %i.pd = sub i64 %i.pc, %i.pb
  %i.pe = xor i64 %i.nu, -1
  %i.pf = add nsw i64 %i.pe, %i.nq                ; 2 uses
  %i.pg = mul i64 %i.pf, %i.no                    ; 2 uses
  %i.ph = add i64 %i.pg, %i.fm
  %i.pi = add i64 %i.ph, %wide.trip.count189.i
  %i.pj = sub i64 %i.pi, %i.gd                    ; 2 uses
  %scevgep837 = getelementptr i8, ptr %i.fx, i64 %i.pj
  %i.pk = add i64 %i.pg, %i.fm
  %i.pl = add i64 %i.pk, %wide.trip.count189.i
  %i.pm = sub i64 %i.pl, %i.gd
  %i.pn = shl i64 %i.pm, 2
  %scevgep840 = getelementptr i8, ptr %i.fj, i64 %i.pn ; 3 uses
  %i.po = mul i64 %i.pf, %i.np
  %i.pp = add i64 %i.po, %wide.trip.count189.i
  %i.pq = add i64 %i.pp, %i.el
  %i.pr = sub i64 %i.pq, %i.nk
  %scevgep845 = getelementptr i8, ptr %.val, i64 %i.pr
  %35 = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %36 = zext nneg i32 %i.dz to i64
  %scevgep849 = getelementptr i8, ptr %i.fx, i64 %i.pj
  %i.ps = add nsw i64 %wide.trip.count189.i, -1   ; 2 uses
  %min.iters.check881 = icmp ult i32 %i.dm, 20
  %stride.check860 = icmp slt i64 %i.np, 0
  %n.vec883 = and i64 %wide.trip.count189.i, 2147483644 ; 3 uses
  %cmp.n893 = icmp eq i64 %n.vec883, %wide.trip.count189.i
  %i.pt = sub i32 %i.dg, %i.dk                    ; 2 uses
  %i.pu = zext i32 %i.pt to i64
  %i.pv = add nuw nsw i64 %i.pu, 1                ; 2 uses
  %min.iters.check823 = icmp ult i32 %i.pt, 7
  %n.vec825 = and i64 %i.pv, 8589934584           ; 3 uses
  %i.pw = add nsw i64 %n.vec825, %smin.i
  %invariant.gep973 = getelementptr [4 x i8], ptr %invariant.gep274.i, i64 %smin.i
  %cmp.n832 = icmp eq i64 %i.pv, %n.vec825
  %i.px = sub nsw i32 0, %i.dg
  %i.py = sext i32 %i.px to i64
  %i.pz = add nsw i64 %i.nu, 1
  %i.qa = sub nsw i64 %i.pz, %i.py                ; 3 uses
  %min.iters.check811 = icmp ult i64 %i.qa, 8
  %n.vec813 = and i64 %i.qa, -8                   ; 3 uses
  %i.qb = add nsw i64 %n.vec813, %i.ok
  %invariant.gep975 = getelementptr [4 x i8], ptr %i.ft, i64 %i.ok
  %cmp.n820 = icmp eq i64 %i.qa, %n.vec813
  %min.iters.check797 = icmp ult i32 %i.dm, 8
  %op.rdx = add i64 %i.pd, 3
  %op.rdx898 = add i64 %op.rdx, %i.fe
  %diff.check795 = icmp ult i64 %op.rdx898, 31
  %or.cond896 = select i1 %min.iters.check797, i1 true, i1 %diff.check795
  %n.vec799 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %broadcast.splatinsert800.a = insertelement <4 x i32> poison, i32 %i.nx, i64 0
  %broadcast.splat801.a = shufflevector <4 x i32> %broadcast.splatinsert800.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n808 = icmp eq i64 %n.vec799, %wide.trip.count189.i
  %xtraiter939 = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod940.not = icmp eq i64 %xtraiter939, 0
  %min.iters.check781 = icmp ult i32 %i.dm, 8
  %bound0777 = icmp ult ptr %i.ff, %scevgep776
  %bound1778 = icmp ult ptr %i.ob, %scevgep775
  %found.conflict779 = and i1 %bound0777, %bound1778
  %n.vec783 = and i64 %wide.trip.count189.i, 2147483640 ; 3 uses
  %cmp.n792 = icmp eq i64 %n.vec783, %wide.trip.count189.i
  %xtraiter942 = and i64 %wide.trip.count189.i, 3 ; 2 uses
  %lcmp.mod943.not = icmp eq i64 %xtraiter942, 0
  %i.qc = sub nsw i32 0, %i.dg
  %i.qd = sext i32 %i.qc to i64
  %i.qe = add nuw nsw i64 %wide.trip.count220.i, 1
  %i.qf = sub nsw i64 %i.qe, %i.qd                ; 3 uses
  %min.iters.check759 = icmp ult i64 %i.qf, 8
  %n.vec761 = and i64 %i.qf, -8                   ; 3 uses
  %i.qg = add nsw i64 %n.vec761, %i.ok
  %invariant.gep977 = getelementptr [4 x i8], ptr %i.ft, i64 %i.ok
  %cmp.n771 = icmp eq i64 %i.qf, %n.vec761
  %xtraiter945 = and i64 %wide.trip.count189.i, 1
  %i.qh = icmp eq i64 %i.ps, 0
  %unroll_iter950 = and i64 %wide.trip.count189.i, 2147483646
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  %lcmp.mod949 = trunc i32 %i.dm to i1
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge112.i, %.lr.ph121.i
  %indvars.iv237.i = phi i64 [ 0, %.lr.ph121.i ], [ %indvars.iv.next238.i, %._crit_edge112.i ] ; 4 uses
  %.0418119.i = phi ptr [ %i.ne, %.lr.ph121.i ], [ %i.zz, %._crit_edge112.i ] ; 4 uses
  %i.qi = trunc i64 %indvars.iv237.i to i32
  %i.qj = add i32 %i.dg, %i.qi
  %i.qk = call i32 @llvm.smax.i32(i32 %35, i32 %i.qj)
  %smax842 = sext i32 %i.qk to i64
  %smin843 = call i64 @llvm.smin.i64(i64 %smax842, i64 %36)
  %scevgep846 = getelementptr i8, ptr %scevgep845, i64 %smin843 ; 2 uses
  %i.ql = load ptr, ptr %i.et, align 8, !tbaa !79 ; 2 uses
  %.not454.i = icmp eq ptr %i.ql, null
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.ej
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %indvars.iv237.i
  %i.qo = select i1 %.not454.i, ptr %i.b, ptr %i.qn
  br i1 %i.nm, label %.lr.ph79.preheader.i, label %.preheader41.i

.lr.ph79.preheader.i:                             ; preds = %bb.ad
  %i.qp = trunc i64 %indvars.iv237.i to i32       ; 3 uses
  %i.qq = add i32 %i.dg, %i.qp                    ; 3 uses
  %i.qr = call i32 @llvm.smax.i32(i32 %i.qq, i32 %i.ds)
  %i.qs = call i32 @llvm.smin.i32(i32 %i.qr, i32 %i.dz)
  %i.qt = sext i32 %i.qs to i64
  %gep128.i = getelementptr i8, ptr %invariant.gep127.i, i64 %i.qt ; 3 uses
  %i.qu = call i32 @llvm.smax.i32(i32 %i.qq, i32 %i.ng)
  %i.qv = call i32 @llvm.smin.i32(i32 %i.qu, i32 %i.ni)
  %i.qw = sext i32 %i.qv to i64
  %gep126.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.qw
  %i.qx = add i32 %i.qp, %i.gq
  %i.qy = call i32 @llvm.smax.i32(i32 %i.qx, i32 %i.ng)
  %..i99 = call i32 @llvm.smin.i32(i32 %i.qy, i32 %i.ni)
  %i.qz = sext i32 %..i99 to i64
  %gep124.i = getelementptr i8, ptr %invariant.gep123.i, i64 %i.qz
  %i.ra = add i32 %i.qq, %i.dh
  %i.rb = srem i32 %i.ra, %i.nf
  %i.rc = mul i32 %i.rb, %i.es
  %i.rd = sext i32 %i.rc to i64                   ; 2 uses
  %gep116.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.rd ; 4 uses
  %i.re = srem i32 %i.qp, %i.nf
  %i.rf = mul i32 %i.re, %i.es
  %i.rg = sext i32 %i.rf to i64                   ; 2 uses
  %scevgep838 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rg ; 3 uses
  %scevgep848 = getelementptr i8, ptr %scevgep837, i64 %i.rd ; 3 uses
  %scevgep850 = getelementptr i8, ptr %scevgep849, i64 %i.rg ; 2 uses
  %bound0851 = icmp ult ptr %gep116.i, %scevgep840
  %bound1852 = icmp ult ptr %i.gf, %scevgep848
  %found.conflict853 = and i1 %bound0851, %bound1852
  %bound0856 = icmp ult ptr %gep116.i, %scevgep846
  %bound1857 = icmp ult ptr %gep128.i, %scevgep848
  %found.conflict858 = and i1 %bound0856, %bound1857
  %i.rh = or i1 %found.conflict858, %stride.check860
  %conflict.rdx861 = or i1 %found.conflict853, %i.rh
  %bound0862 = icmp ult ptr %gep116.i, %scevgep850
  %bound1863 = icmp ult ptr %scevgep838, %scevgep848
  %found.conflict864 = and i1 %bound0862, %bound1863
  %conflict.rdx867 = or i1 %conflict.rdx861, %found.conflict864
  %bound0868 = icmp ult ptr %i.gf, %scevgep846
  %bound1869 = icmp ult ptr %gep128.i, %scevgep840
  %found.conflict870 = and i1 %bound0868, %bound1869
  %conflict.rdx873 = or i1 %found.conflict870, %conflict.rdx867
  %bound0874 = icmp ult ptr %i.gf, %scevgep850
  %bound1875 = icmp ult ptr %scevgep838, %scevgep840
  %found.conflict876 = and i1 %bound0874, %bound1875
  %conflict.rdx879 = or i1 %conflict.rdx873, %found.conflict876
  br label %.lr.ph79.i

.preheader41.i:                                   ; preds = %._crit_edge.i, %bb.ad
  br i1 %.not45580.i, label %.preheader40.i, label %.lr.ph82.preheader.i

.lr.ph82.preheader.i:                             ; preds = %.preheader41.i
  %.pre.i = load i32, ptr %i.ns, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check823, label %.lr.ph82.i.preheader, label %vector.ph824

vector.ph824:                                     ; preds = %.lr.ph82.preheader.i
  %broadcast.splatinsert826 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat827 = shufflevector <4 x i32> %broadcast.splatinsert826, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body828

vector.body828:                                   ; preds = %vector.body828, %vector.ph824
  %index829 = phi i64 [ 0, %vector.ph824 ], [ %index.next830, %vector.body828 ] ; 2 uses
  %gep974 = getelementptr [4 x i8], ptr %invariant.gep973, i64 %index829 ; 2 uses
  %i.ri = getelementptr i8, ptr %gep974, i64 16
  store <4 x i32> %broadcast.splat827, ptr %gep974, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat827, ptr %i.ri, align 4, !tbaa !8
  %index.next830 = add nuw i64 %index829, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next830, %n.vec825
  br i1 %i.rj, label %middle.block831, label %vector.body828, !llvm.loop !242

middle.block831:                                  ; preds = %vector.body828
  br i1 %cmp.n832, label %.preheader40.i, label %.lr.ph82.i.preheader

.lr.ph82.i.preheader:                             ; preds = %.lr.ph82.preheader.i, %middle.block831
  %indvars.iv196.i.ph = phi i64 [ %smin.i, %.lr.ph82.preheader.i ], [ %i.pw, %middle.block831 ]
  br label %.lr.ph82.i

.lr.ph79.i:                                       ; preds = %._crit_edge.i, %.lr.ph79.preheader.i
  %indvars.iv191.i = phi i64 [ %i.nu, %.lr.ph79.preheader.i ], [ %indvars.iv.next192.i, %._crit_edge.i ] ; 2 uses
  %.041776.i = phi ptr [ %scevgep838, %.lr.ph79.preheader.i ], [ %i.ta, %._crit_edge.i ] ; 3 uses
  %.142075.i = phi ptr [ %gep128.i, %.lr.ph79.preheader.i ], [ %i.te, %._crit_edge.i ] ; 3 uses
  %.042174.i = phi ptr [ %gep124.i, %.lr.ph79.preheader.i ], [ %i.td, %._crit_edge.i ] ; 2 uses
  %.142373.i = phi ptr [ %gep126.i, %.lr.ph79.preheader.i ], [ %i.tc, %._crit_edge.i ] ; 2 uses
  %.142572.i = phi ptr [ %gep116.i, %.lr.ph79.preheader.i ], [ %i.sz, %._crit_edge.i ] ; 3 uses
  %.142771.i = phi ptr [ %i.gf, %.lr.ph79.preheader.i ], [ %i.tb, %._crit_edge.i ] ; 3 uses
  %i.rk = load i8, ptr %.142373.i, align 1, !tbaa !27 ; 2 uses
  %i.rl = zext i8 %i.rk to i32                    ; 2 uses
  br i1 %i.nn, label %.lr.ph70.i.preheader, label %._crit_edge.i

.lr.ph70.i.preheader:                             ; preds = %.lr.ph79.i
  %brmerge979 = select i1 %min.iters.check881, i1 true, i1 %conflict.rdx879
  br i1 %brmerge979, label %.lr.ph70.i.preheader901, label %vector.ph882

vector.ph882:                                     ; preds = %.lr.ph70.i.preheader
  %broadcast.splatinsert884 = insertelement <4 x i32> poison, i32 %i.rl, i64 0
  %broadcast.splat885 = shufflevector <4 x i32> %broadcast.splatinsert884, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph882
  %index887 = phi i64 [ 0, %vector.ph882 ], [ %index.next891, %vector.body886 ] ; 5 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %index887
  %wide.load888 = load <4 x i8>, ptr %i.rm, align 1, !tbaa !27, !alias.scope !340
  %i.rn = zext <4 x i8> %wide.load888 to <4 x i32>
  %i.ro = sub nsw <4 x i32> %broadcast.splat885, %i.rn
  %i.rp = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ro, i1 true) ; 2 uses
  %i.rq = trunc nuw <4 x i32> %i.rp to <4 x i8>
  %i.rr = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %index887
  store <4 x i8> %i.rq, ptr %i.rr, align 1, !tbaa !27, !alias.scope !341, !noalias !342
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %index887 ; 2 uses
  %wide.load889 = load <4 x i32>, ptr %i.rs, align 4, !tbaa !8, !alias.scope !343, !noalias !344
  %i.rt = add nsw <4 x i32> %i.rp, %wide.load889
  %i.ru = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %index887
  %wide.load890 = load <4 x i8>, ptr %i.ru, align 1, !tbaa !27, !alias.scope !345
  %i.rv = zext <4 x i8> %wide.load890 to <4 x i32>
  %i.rw = sub <4 x i32> %i.rt, %i.rv
  store <4 x i32> %i.rw, ptr %i.rs, align 4, !tbaa !8, !alias.scope !343, !noalias !344
  %index.next891 = add nuw i64 %index887, 4       ; 2 uses
  %i.rx = icmp eq i64 %index.next891, %n.vec883
  br i1 %i.rx, label %middle.block892, label %vector.body886, !llvm.loop !248

middle.block892:                                  ; preds = %vector.body886
  br i1 %cmp.n893, label %._crit_edge.i, label %.lr.ph70.i.preheader901

.lr.ph70.i.preheader901:                          ; preds = %.lr.ph70.i.preheader, %middle.block892
  %indvars.iv186.i.ph = phi i64 [ %n.vec883, %middle.block892 ], [ 0, %.lr.ph70.i.preheader ]
  br label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader901, %.lr.ph70.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %.lr.ph70.i ], [ %indvars.iv186.i.ph, %.lr.ph70.i.preheader901 ] ; 5 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.142075.i, i64 %indvars.iv186.i
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !27
  %i.sa = zext i8 %i.rz to i32
  %i.sb = sub nsw i32 %i.rl, %i.sa
  %i.sc = call i32 @llvm.abs.i32(i32 %i.sb, i1 true) ; 2 uses
  %i.sd = trunc nuw i32 %i.sc to i8
  %i.se = getelementptr inbounds nuw i8, ptr %.142572.i, i64 %indvars.iv186.i
  store i8 %i.sd, ptr %i.se, align 1, !tbaa !27
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.142771.i, i64 %indvars.iv186.i ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !8
  %i.sh = add nsw i32 %i.sc, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %.041776.i, i64 %indvars.iv186.i
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !27
  %i.sk = zext i8 %i.sj to i32
  %i.sl = sub i32 %i.sh, %i.sk
  store i32 %i.sl, ptr %i.sf, align 4, !tbaa !8
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %._crit_edge.i, label %.lr.ph70.i, !llvm.loop !249

._crit_edge.i:                                    ; preds = %.lr.ph70.i, %middle.block892, %.lr.ph79.i
  %i.sm = zext i8 %i.rk to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !27
  %i.sp = zext i8 %i.so to i32
  %i.sq = load i8, ptr %.042174.i, align 1, !tbaa !27
  %i.sr = zext i8 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !27
  %i.su = zext i8 %i.st to i32
  %i.sv = sub nsw i32 %i.sp, %i.su
  %i.sw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv191.i ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !8
  %i.sy = add nsw i32 %i.sv, %i.sx
  store i32 %i.sy, ptr %i.sw, align 4, !tbaa !8
  %indvars.iv.next192.i = add nsw i64 %indvars.iv191.i, 1 ; 2 uses
  %i.sz = getelementptr inbounds i8, ptr %.142572.i, i64 %i.no
  %i.ta = getelementptr inbounds i8, ptr %.041776.i, i64 %i.no
  %i.tb = getelementptr inbounds [4 x i8], ptr %.142771.i, i64 %i.no
  %i.tc = getelementptr inbounds i8, ptr %.142373.i, i64 %i.np
  %i.td = getelementptr inbounds i8, ptr %.042174.i, i64 %i.np
  %i.te = getelementptr inbounds i8, ptr %.142075.i, i64 %i.np
  %exitcond195.not.i = icmp eq i64 %indvars.iv.next192.i, %i.nq
  br i1 %exitcond195.not.i, label %.preheader41.i, label %.lr.ph79.i, !llvm.loop !250

.preheader40.i:                                   ; preds = %.lr.ph82.i, %middle.block831, %.preheader41.i
  br i1 %i.nt, label %.lr.ph84.preheader.i, label %.preheader39.i

.lr.ph84.preheader.i:                             ; preds = %.preheader40.i
  %.pre242.i = load i32, ptr %i.nv, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check811, label %.lr.ph84.i.preheader, label %vector.ph812

vector.ph812:                                     ; preds = %.lr.ph84.preheader.i
  %broadcast.splatinsert814 = insertelement <4 x i32> poison, i32 %.pre242.i, i64 0
  %broadcast.splat815 = shufflevector <4 x i32> %broadcast.splatinsert814, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body816

vector.body816:                                   ; preds = %vector.body816, %vector.ph812
  %index817 = phi i64 [ 0, %vector.ph812 ], [ %index.next818, %vector.body816 ] ; 2 uses
  %gep976 = getelementptr [4 x i8], ptr %invariant.gep975, i64 %index817 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %gep976, i64 16
  store <4 x i32> %broadcast.splat815, ptr %gep976, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat815, ptr %i.tf, align 4, !tbaa !8
  %index.next818 = add nuw i64 %index817, 8       ; 2 uses
  %i.tg = icmp eq i64 %index.next818, %n.vec813
  br i1 %i.tg, label %middle.block819, label %vector.body816, !llvm.loop !251

middle.block819:                                  ; preds = %vector.body816
  br i1 %cmp.n820, label %.preheader39.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.lr.ph84.preheader.i, %middle.block819
  %indvars.iv200.i.ph = phi i64 [ %i.ok, %.lr.ph84.preheader.i ], [ %i.qb, %middle.block819 ]
  br label %.lr.ph84.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i.preheader, %.lr.ph82.i
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %.lr.ph82.i ], [ %indvars.iv196.i.ph, %.lr.ph82.i.preheader ] ; 2 uses
  %gep275.i = getelementptr [4 x i8], ptr %invariant.gep274.i, i64 %indvars.iv196.i
  store i32 %.pre.i, ptr %gep275.i, align 4, !tbaa !8
  %indvars.iv.next197.i = add nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %lftr.wideiv198.i = trunc i64 %indvars.iv.next197.i to i32
  %exitcond199.not.i = icmp eq i32 %i.dh, %lftr.wideiv198.i
  br i1 %exitcond199.not.i, label %.preheader40.i, label %.lr.ph82.i, !llvm.loop !252

.preheader39.i:                                   ; preds = %.lr.ph84.i, %middle.block819, %.preheader40.i
  br i1 %i.nn, label %.lr.ph86.i.preheader, label %.preheader38.i

.lr.ph86.i.preheader:                             ; preds = %.preheader39.i
  br i1 %or.cond896, label %.lr.ph86.i.preheader903, label %vector.body802

vector.body802:                                   ; preds = %.lr.ph86.i.preheader, %vector.body802
  %index803 = phi i64 [ %index.next806, %vector.body802 ], [ 0, %.lr.ph86.i.preheader ] ; 3 uses
  %i.th = sub nsw i64 %index803, %i.gd
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %wide.load804 = load <4 x i32>, ptr %i.ti, align 4, !tbaa !8
  %wide.load805 = load <4 x i32>, ptr %i.tj, align 4, !tbaa !8
  %i.tk = mul nsw <4 x i32> %wide.load804, %broadcast.splat801.a
  %i.tl = mul nsw <4 x i32> %wide.load805, %broadcast.splat801.a
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %index803 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  store <4 x i32> %i.tk, ptr %i.tm, align 4, !tbaa !8
  store <4 x i32> %i.tl, ptr %i.tn, align 4, !tbaa !8
  %index.next806 = add nuw i64 %index803, 8       ; 2 uses
  %i.to = icmp eq i64 %index.next806, %n.vec799
  br i1 %i.to, label %middle.block807, label %vector.body802, !llvm.loop !253

middle.block807:                                  ; preds = %vector.body802
  br i1 %cmp.n808, label %._crit_edge87.i, label %.lr.ph86.i.preheader903

.lr.ph86.i.preheader903:                          ; preds = %.lr.ph86.i.preheader, %middle.block807
  %indvars.iv205.i.ph = phi i64 [ 0, %.lr.ph86.i.preheader ], [ %n.vec799, %middle.block807 ] ; 3 uses
  %i.tp = sub nsw i64 %i.ps, %indvars.iv205.i.ph
  br i1 %lcmp.mod940.not, label %.lr.ph86.i.prol.loopexit, label %.lr.ph86.i.prol

.lr.ph86.i.prol:                                  ; preds = %.lr.ph86.i.preheader903, %.lr.ph86.i.prol
  %indvars.iv205.i.prol = phi i64 [ %indvars.iv.next206.i.prol, %.lr.ph86.i.prol ], [ %indvars.iv205.i.ph, %.lr.ph86.i.preheader903 ] ; 3 uses
  %prol.iter941 = phi i64 [ %prol.iter941.next, %.lr.ph86.i.prol ], [ 0, %.lr.ph86.i.preheader903 ]
  %i.tq = sub nsw i64 %indvars.iv205.i.prol, %i.gd
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !8
  %i.tt = mul nsw i32 %i.ts, %i.nx
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv205.i.prol
  store i32 %i.tt, ptr %i.tu, align 4, !tbaa !8
  %indvars.iv.next206.i.prol = add nuw nsw i64 %indvars.iv205.i.prol, 1 ; 2 uses
  %prol.iter941.next = add i64 %prol.iter941, 1   ; 2 uses
  %prol.iter941.cmp.not = icmp eq i64 %prol.iter941.next, %xtraiter939
  br i1 %prol.iter941.cmp.not, label %.lr.ph86.i.prol.loopexit, label %.lr.ph86.i.prol, !llvm.loop !254

.lr.ph86.i.prol.loopexit:                         ; preds = %.lr.ph86.i.prol, %.lr.ph86.i.preheader903
  %indvars.iv205.i.unr = phi i64 [ %indvars.iv205.i.ph, %.lr.ph86.i.preheader903 ], [ %indvars.iv.next206.i.prol, %.lr.ph86.i.prol ]
  %i.tv = icmp ult i64 %i.tp, 3
  br i1 %i.tv, label %._crit_edge87.i, label %.lr.ph86.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i, %.lr.ph84.i ], [ %indvars.iv200.i.ph, %.lr.ph84.i.preheader ] ; 2 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv200.i
  store i32 %.pre242.i, ptr %i.tw, align 4, !tbaa !8
  %indvars.iv.next201.i = add nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %exitcond204.not.i = icmp eq i64 %indvars.iv.next201.i, %i.nu
  br i1 %exitcond204.not.i, label %.preheader39.i, label %.lr.ph84.i, !llvm.loop !255

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.prol.loopexit, %.lr.ph86.i
  %indvars.iv205.i = phi i64 [ %indvars.iv.next206.i.3, %.lr.ph86.i ], [ %indvars.iv205.i.unr, %.lr.ph86.i.prol.loopexit ] ; 6 uses
  %i.tx = sub nsw i64 %indvars.iv205.i, %i.gd
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !8
  %i.ua = mul nsw i32 %i.tz, %i.nx
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv205.i
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !8
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %i.uc = sub nsw i64 %indvars.iv.next206.i, %i.gd
end_hunk_2
begin_hunk_3_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv222.i ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !8
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv222.i
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !8
  %i.wz = add nsw i32 %i.wy, %i.ww
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv222.i
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !8
  %i.xc = sub i32 %i.wz, %i.xb                    ; 3 uses
  store i32 %i.xc, ptr %i.wv, align 4, !tbaa !8
  %i.xd = icmp slt i32 %i.xc, %.041397.i
  %spec.select.i98 = call i32 @llvm.smin.i32(i32 %i.xc, i32 %.041397.i) ; 2 uses
  %i.xe = trunc nuw nsw i64 %indvars.iv222.i to i32
  %spec.select462.i = select i1 %i.xd, i32 %i.xe, i32 %.041198.i
  %indvars.iv.next223.i = or disjoint i64 %indvars.iv222.i, 1 ; 4 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next223.i ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !8
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv.next223.i
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !8
  %i.xj = add nsw i32 %i.xi, %i.xg
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.next223.i
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !8
  %i.xm = sub i32 %i.xj, %i.xl                    ; 3 uses
  store i32 %i.xm, ptr %i.xf, align 4, !tbaa !8
  %i.xn = icmp slt i32 %i.xm, %spec.select.i98
  %spec.select.i98.1 = call i32 @llvm.smin.i32(i32 %i.xm, i32 %spec.select.i98) ; 3 uses
  %i.xo = trunc nuw nsw i64 %indvars.iv.next223.i to i32
  %spec.select462.i.1 = select i1 %i.xn, i32 %i.xo, i32 %spec.select462.i ; 3 uses
  %indvars.iv.next223.i.1 = add nuw nsw i64 %indvars.iv222.i, 2 ; 2 uses
  %niter951.next.1 = add i64 %niter951, 2         ; 2 uses
  %niter951.ncmp.1 = icmp eq i64 %niter951.next.1, %unroll_iter950
  br i1 %niter951.ncmp.1, label %._crit_edge102.i.loopexit.unr-lcssa, label %.lr.ph101.i, !llvm.loop !266

._crit_edge102.i.loopexit.unr-lcssa:              ; preds = %.lr.ph101.i
  br i1 %lcmp.mod946.not, label %._crit_edge102.i, label %.lr.ph101.i.epil.preheader

.lr.ph101.i.epil.preheader:                       ; preds = %._crit_edge102.i.loopexit.unr-lcssa, %.lr.ph101.i.preheader
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph101.i.preheader ], [ %indvars.iv.next223.i.1, %._crit_edge102.i.loopexit.unr-lcssa ] ; 4 uses
  %.041198.i.epil.init = phi i32 [ -1, %.lr.ph101.i.preheader ], [ %spec.select462.i.1, %._crit_edge102.i.loopexit.unr-lcssa ]
  %.041397.i.epil.init = phi i32 [ 2147483647, %.lr.ph101.i.preheader ], [ %spec.select.i98.1, %._crit_edge102.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod949)
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv222.i.epil.init ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !8
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv222.i.epil.init
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !8
  %i.xt = add nsw i32 %i.xs, %i.xq
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv222.i.epil.init
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !8
  %i.xw = sub i32 %i.xt, %i.xv                    ; 3 uses
  store i32 %i.xw, ptr %i.xp, align 4, !tbaa !8
  %i.xx = icmp slt i32 %i.xw, %.041397.i.epil.init
  %spec.select.i98.epil = call i32 @llvm.smin.i32(i32 %i.xw, i32 %.041397.i.epil.init)
  %i.xy = trunc nuw nsw i64 %indvars.iv222.i.epil.init to i32
  %spec.select462.i.epil = select i1 %i.xx, i32 %i.xy, i32 %.041198.i.epil.init
  br label %._crit_edge102.i

._crit_edge102.i:                                 ; preds = %.lr.ph101.i.epil.preheader, %._crit_edge102.i.loopexit.unr-lcssa, %.lr.ph111.i
  %.0413.lcssa.i = phi i32 [ 2147483647, %.lr.ph111.i ], [ %spec.select.i98.1, %._crit_edge102.i.loopexit.unr-lcssa ], [ %spec.select.i98.epil, %.lr.ph101.i.epil.preheader ] ; 2 uses
  %.0411.lcssa.i = phi i32 [ -1, %.lr.ph111.i ], [ %spec.select462.i.1, %._crit_edge102.i.loopexit.unr-lcssa ], [ %spec.select462.i.epil, %.lr.ph101.i.epil.preheader ] ; 4 uses
  %i.xz = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.wj
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !8
  %i.yb = sext i32 %i.wq to i64
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !8
  %i.ye = sub nsw i32 %i.ya, %i.yd
  %i.yf = add nsw i32 %i.ye, %.1416109.i          ; 2 uses
  %i.yg = icmp slt i32 %i.yf, %i.eb
  br i1 %i.yg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge102.i
  %i.yh = mul nsw i64 %indvars.iv232.i, %i.on
  %i.yi = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.yh
  store i16 %i.ef, ptr %i.yi, align 2, !tbaa !338
  br label %bb.al

bb.af:                                            ; preds = %._crit_edge102.i
  br i1 %i.of, label %bb.ag, label %.critedge464.i

bb.ag:                                            ; preds = %bb.af
  %i.yj = mul nsw i32 %.0413.lcssa.i, %i.ed
  %i.yk = sdiv i32 %i.yj, 100
  %i.yl = add nsw i32 %i.yk, %.0413.lcssa.i
  br i1 %i.nn, label %.lr.ph108.i, label %.critedge464.i

.lr.ph108.i:                                      ; preds = %bb.ag
  %i.ym = add nsw i32 %.0411.lcssa.i, -1
  %i.yn = add nsw i32 %.0411.lcssa.i, 1
  %i.yo = sext i32 %i.yn to i64
  %i.yp = sext i32 %i.ym to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph108.i
  %indvars.iv227.i = phi i64 [ 0, %.lr.ph108.i ], [ %indvars.iv.next228.i, %bb.aj ] ; 4 uses
  %i.yq = icmp slt i64 %indvars.iv227.i, %i.yp
  %i.yr = icmp sgt i64 %indvars.iv227.i, %i.yo
  %or.cond.i = select i1 %i.yq, i1 true, i1 %i.yr
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv227.i
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !8
  %.not457.i = icmp sgt i32 %i.yt, %i.yl
  br i1 %.not457.i, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %wide.trip.count189.i
  br i1 %exitcond231.not.i, label %.critedge464.i, label %bb.ah, !llvm.loop !267

.critedge.i:                                      ; preds = %bb.ai
  %i.yu = mul nsw i64 %indvars.iv232.i, %i.on
  %i.yv = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.yu
  store i16 %i.ef, ptr %i.yv, align 2, !tbaa !338
  br label %bb.al

.critedge464.i:                                   ; preds = %bb.aj, %bb.ag, %bb.af
  %i.yw = load i32, ptr %i.og, align 4, !tbaa !8
  store i32 %i.yw, ptr %i.fd, align 4, !tbaa !8
  %i.yx = load i32, ptr %i.oi, align 4, !tbaa !8
  store i32 %i.yx, ptr %i.oh, align 4, !tbaa !8
  %i.yy = sext i32 %.0411.lcssa.i to i64
  %i.yz = getelementptr [4 x i8], ptr %i.ff, i64 %i.yy ; 3 uses
  %i.za = getelementptr i8, ptr %i.yz, i64 4
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !8  ; 2 uses
  %i.zc = getelementptr i8, ptr %i.yz, i64 -4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !8  ; 2 uses
  %i.ze = add nsw i32 %i.zd, %i.zb
  %i.zf = load i32, ptr %i.yz, align 4, !tbaa !8  ; 2 uses
  %i.zg = shl i32 %i.zf, 1
  %i.zh = sub i32 %i.ze, %i.zg
  %i.zi = sub nsw i32 %i.zb, %i.zd                ; 2 uses
  %i.zj = call i32 @llvm.abs.i32(i32 %i.zi, i1 true)
  %i.zk = add nsw i32 %i.zh, %i.zj                ; 2 uses
  %i.zl = xor i32 %.0411.lcssa.i, -1
  %i.zm = add i32 %i.dp, %i.zl
  %.not.i.i = icmp eq i32 %i.zk, 0
  br i1 %.not.i.i, label %_ZN2cv11dispDescaleIsEET_iii.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.critedge464.i
  %i.zn = shl nsw i32 %i.zi, 8
  %i.zo = sdiv i32 %i.zn, %i.zk
  br label %_ZN2cv11dispDescaleIsEET_iii.exit.i

_ZN2cv11dispDescaleIsEET_iii.exit.i:              ; preds = %bb.ak, %.critedge464.i
  %i.zp = phi i32 [ %i.zo, %bb.ak ], [ 0, %.critedge464.i ]
  %i.zq = shl nsw i32 %i.zm, 8
  %i.zr = or disjoint i32 %i.zq, 15
  %i.zs = add i32 %i.zr, %i.zp
  %i.zt = lshr i32 %i.zs, 4
  %i.zu = trunc i32 %i.zt to i16
  %i.zv = mul nsw i64 %indvars.iv232.i, %i.on
  %i.zw = getelementptr inbounds [2 x i8], ptr %.0418119.i, i64 %i.zv
  store i16 %i.zu, ptr %i.zw, align 2, !tbaa !338
  %i.zx = mul nsw i64 %indvars.iv232.i, %i.ez
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.qo, i64 %i.zx
  store i32 %i.zf, ptr %i.zy, align 4, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %_ZN2cv11dispDescaleIsEET_iii.exit.i, %.critedge.i, %bb.ae
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count235.i
  br i1 %exitcond236.not.i, label %._crit_edge112.i, label %.lr.ph111.i, !llvm.loop !268

._crit_edge112.i:                                 ; preds = %bb.al, %.preheader37.i
  %indvars.iv.next238.i = add nuw nsw i64 %indvars.iv237.i, 1 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.0418119.i, i64 2
  %exitcond241.not.i = icmp eq i64 %indvars.iv.next238.i, %wide.trip.count240.i
  br i1 %exitcond241.not.i, label %_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %bb.ad, !llvm.loop !269

_ZN2cvL26findStereoCorrespondenceBMIsEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit: ; preds = %._crit_edge112.i, %._crit_edge67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ay

bb.am:                                            ; preds = %bb.v
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.an:                                            ; preds = %bb.w
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ao:                                            ; preds = %bb.x
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ap:                                            ; preds = %bb.z
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.aq:                                            ; preds = %bb.ab
  %i.aae = shl i32 %i.do, 8
  %i.aaf = add i32 %i.aae, -256                   ; 10 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !79
  %i.aai = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.aaj = zext nneg i32 %i.dr to i64             ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.aaj ; 2 uses
  %i.aal = zext i32 %i.dt to i64                  ; 3 uses
  %i.aam = getelementptr i8, ptr %.val, i64 %i.aal ; 2 uses
  %i.aan = load i64, ptr %i.aai, align 8, !tbaa !84 ; 3 uses
  %i.aao = trunc i64 %i.aan to i32                ; 2 uses
  %i.aap = lshr i64 %.val87, 2                    ; 4 uses
  %i.aaq = add i32 %i.dx, %i.dk                   ; 7 uses
  %i.aar = add i32 %i.aaq, %i.di                  ; 2 uses
  %i.aas = mul i32 %i.aar, %i.dm                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.aat = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !79
  %.not.i100 = icmp eq ptr %i.aau, null
  %i.aav = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.aaw = load i64, ptr %i.aav, align 8
  %i.aax = shl i64 %i.aaw, 30
  %i.aay = ashr i64 %i.aax, 32
  %i.aaz = select i1 %.not.i100, i64 0, i64 %i.aay
  %i.aba = getelementptr inbounds nuw i8, ptr %i.cy, i64 160 ; 6 uses
  %i.abb = load ptr, ptr %i.cy, align 8, !tbaa !88
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.da
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !91 ; 6 uses
  %i.abe = ptrtoaddr ptr %i.abd to i64
  %i.abf = getelementptr i8, ptr %i.abd, i64 4    ; 19 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !88
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %i.da
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !91 ; 5 uses
  %i.abk = ptrtoaddr ptr %i.abj to i64
  %i.abl = mul i32 %i.dh, %i.dm
  %i.abm = sext i32 %i.abl to i64                 ; 8 uses
  %i.abn = getelementptr [4 x i8], ptr %i.abj, i64 %i.abm ; 10 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !88
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %i.da
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !91
  %i.abs = sext i32 %i.dh to i64
  %i.abt = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.abs ; 15 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !94
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %i.da
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !28 ; 4 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.abm
  %i.abz = add nsw i32 %i.dm, 2
  %i.aca = sext i32 %i.abz to i64
  %i.acb = shl nsw i64 %i.aca, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.abd, i8 0, i64 %i.acb, i1 false)
  %i.acc = mul i32 %i.di, %i.dm
  %i.acd = sext i32 %i.acc to i64                 ; 12 uses
  %i.ace = sub nsw i64 0, %i.acd                  ; 2 uses
  %i.acf = getelementptr [4 x i8], ptr %i.abn, i64 %i.ace ; 8 uses
  %i.acg = add i32 %i.df, 2
  %i.ach = add i32 %i.acg, %i.dx                  ; 2 uses
  %i.aci = mul nsw i32 %i.ach, %i.dm
  %i.acj = sext i32 %i.aci to i64
  %i.ack = shl nsw i64 %i.acj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.acf, i8 0, i64 %i.ack, i1 false)
  %i.acl = sext i32 %i.di to i64
  %i.acm = sub nsw i64 0, %i.acl
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.acm
  %i.aco = sext i32 %i.ach to i64
  %i.acp = shl nsw i64 %i.aco, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.acn, i8 0, i64 %i.acp, i1 false)
  %i.acq = xor i32 %i.dg, -1                      ; 7 uses
  %invariant.gep.i101 = getelementptr i8, ptr %i.aby, i64 %i.ace ; 3 uses
  %i.acr = icmp sgt i32 %i.df, -2                 ; 2 uses
  br i1 %i.acr, label %.lr.ph.i266, label %.preheader43.i102

.lr.ph.i266:                                      ; preds = %bb.aq
  %i.acs = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.act = xor i32 %i.dr, -1
  %i.acu = add i32 %i.dv, %i.act                  ; 2 uses
  %i.acv = mul i32 %i.di, %i.aao
  %i.acw = sext i32 %i.acv to i64                 ; 2 uses
  %i.acx = sub nsw i64 0, %i.acw                  ; 2 uses
  %invariant.gep54.i267 = getelementptr i8, ptr %i.aak, i64 %i.acx ; 2 uses
  %invariant.gep56.i268 = getelementptr i8, ptr %i.aam, i64 %i.acx
  %i.acy = icmp sgt i32 %i.aaq, %i.dj
  %i.acz = sext i32 %i.dm to i64                  ; 3 uses
  %sext461.i269 = shl i64 %i.aan, 32
  %i.ada = ashr exact i64 %sext461.i269, 32       ; 7 uses
  br i1 %i.acy, label %.lr.ph.split.i270, label %.preheader43.i102

.lr.ph.split.i270:                                ; preds = %.lr.ph.i266
  %i.adb = icmp sgt i32 %i.dm, 0
  %i.adc = sext i32 %i.dj to i64                  ; 7 uses
  br i1 %i.adb, label %.lr.ph51.us.preheader.i285, label %.lr.ph51.preheader.i271

.lr.ph51.preheader.i271:                          ; preds = %.lr.ph.split.i270
  %smax.i272 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count.i273 = sext i32 %i.aaq to i64  ; 3 uses
  %i.add = sub nsw i64 %wide.trip.count.i273, %i.adc
  %xtraiter = and i64 %i.add, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.adc ; 2 uses
  %indvars.iv.next.i281.prol = add nsw i64 %i.adc, 1
  %i.adf = add nsw i64 %wide.trip.count.i273, -1
  %i.adg = icmp eq i64 %i.adf, %i.adc
  br label %.lr.ph51.i274

.lr.ph51.us.preheader.i285:                       ; preds = %.lr.ph.split.i270
  %i.adh = sext i32 %i.acq to i64
  %smax149.i287 = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %wide.trip.count150.i288 = zext nneg i32 %smax149.i287 to i64
  %wide.trip.count144.i289 = sext i32 %i.aaq to i64 ; 2 uses
  %wide.trip.count139.i290 = zext nneg i32 %i.dm to i64 ; 8 uses
  %i.adi = xor i64 %i.adc, -1
  %i.adj = add nsw i64 %i.adi, %wide.trip.count144.i289 ; 2 uses
  %i.adk = mul nsw i64 %i.adj, %i.acz             ; 2 uses
  %i.adl = add i64 %i.adk, %i.abm
  %i.adm = add i64 %i.adl, %wide.trip.count139.i290
  %i.adn = sub i64 %i.adm, %i.acd
  %scevgep413.a = getelementptr i8, ptr %i.abx, i64 %i.adn
  %37 = mul i32 %i.dm, %i.aar
  %i.ado = add i64 %i.adk, %i.abm
  %i.adp = add i64 %i.ado, %wide.trip.count139.i290
  %i.adq = sub i64 %i.adp, %i.acd
  %i.adr = shl i64 %i.adq, 2
  %scevgep416.a = getelementptr i8, ptr %i.abj, i64 %i.adr ; 2 uses
  %i.ads = mul i64 %i.adj, %i.ada
  %i.adt = add i64 %i.ads, %wide.trip.count139.i290
  %i.adu = add i64 %i.adt, %i.aal
  %i.adv = sub i64 %i.adu, %i.acw
  %scevgep419 = getelementptr i8, ptr %.val, i64 %i.adv
  %38 = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %min.iters.check = icmp ult i32 %i.dm, 8
  %stride.check = icmp slt i64 %i.ada, 0
  %n.vec = and i64 %wide.trip.count139.i290, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count139.i290
  %xtraiter919 = and i64 %wide.trip.count139.i290, 1
  %lcmp.mod920.not = icmp eq i64 %xtraiter919, 0
  %i.adw = add nsw i64 %wide.trip.count139.i290, -1
  br label %.lr.ph51.us.i291

.lr.ph51.us.i291:                                 ; preds = %._crit_edge52.split.us.us.i312, %.lr.ph51.us.preheader.i285
  %indvar = phi i32 [ %indvar.next, %._crit_edge52.split.us.us.i312 ], [ 0, %.lr.ph51.us.preheader.i285 ] ; 3 uses
  %indvars.iv146.i292 = phi i64 [ %indvars.iv.next147.i313, %._crit_edge52.split.us.us.i312 ], [ %i.adh, %.lr.ph51.us.preheader.i285 ] ; 2 uses
  %i.adx = mul i32 %37, %indvar
  %i.ady = sext i32 %i.adx to i64
  %scevgep414 = getelementptr i8, ptr %scevgep413.a, i64 %i.ady ; 2 uses
  %i.adz = add i32 %indvar, %i.acq
  %i.aea = call i32 @llvm.smax.i32(i32 %38, i32 %i.adz)
  %i.aeb = call i32 @llvm.smin.i32(i32 %i.aea, i32 %i.dz)
  %smin417 = sext i32 %i.aeb to i64
  %scevgep420 = getelementptr i8, ptr %scevgep419, i64 %smin417 ; 2 uses
  %i.aec = trunc i64 %indvars.iv146.i292 to i32   ; 3 uses
  %i.aed = add i32 %i.dh, %i.aec
  %i.aee = mul i32 %i.aed, %i.aas
  %i.aef = sext i32 %i.aee to i64
  %gep.us.i293 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.aef ; 3 uses
  %.sroa.speculated15.us.i294 = call i32 @llvm.smax.i32(i32 %i.aec, i32 %i.acs)
  %.sroa.speculated11.us.i295 = call i32 @llvm.smin.i32(i32 %i.acu, i32 %.sroa.speculated15.us.i294)
  %i.aeg = sext i32 %.sroa.speculated11.us.i295 to i64
  %gep55.us.i296 = getelementptr i8, ptr %invariant.gep54.i267, i64 %i.aeg
  %.sroa.speculated6.us.i297 = call i32 @llvm.smax.i32(i32 %i.aec, i32 %i.ds)
  %.sroa.speculated.us.i298 = call i32 @llvm.smin.i32(i32 %i.dz, i32 %.sroa.speculated6.us.i297)
  %i.aeh = sext i32 %.sroa.speculated.us.i298 to i64
  %gep57.us.i299 = getelementptr i8, ptr %invariant.gep56.i268, i64 %i.aeh ; 3 uses
  %bound0 = icmp ult ptr %gep.us.i293, %scevgep416.a
  %bound1 = icmp ult ptr %i.acf, %scevgep414
  %found.conflict = and i1 %bound0, %bound1
  %bound0421 = icmp ult ptr %gep.us.i293, %scevgep420
  %bound1422 = icmp ult ptr %gep57.us.i299, %scevgep414
  %found.conflict423 = and i1 %bound0421, %bound1422
  %i.aei = or i1 %found.conflict423, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.aei
  %bound0424 = icmp ult ptr %i.acf, %scevgep420
  %bound1425 = icmp ult ptr %gep57.us.i299, %scevgep416.a
  %found.conflict426 = and i1 %bound0424, %bound1425
  %conflict.rdx428 = or i1 %found.conflict426, %conflict.rdx
  br label %.lr.ph.us.us.i300

.lr.ph.us.us.i300:                                ; preds = %._crit_edge.us.us.i309, %.lr.ph51.us.i291
  %indvars.iv141.i301 = phi i64 [ %indvars.iv.next142.i310, %._crit_edge.us.us.i309 ], [ %i.adc, %.lr.ph51.us.i291 ] ; 2 uses
  %.041948.us.us.i302 = phi ptr [ %i.agj, %._crit_edge.us.us.i309 ], [ %gep57.us.i299, %.lr.ph51.us.i291 ] ; 5 uses
  %.042247.us.us.i303 = phi ptr [ %i.agi, %._crit_edge.us.us.i309 ], [ %gep55.us.i296, %.lr.ph51.us.i291 ] ; 2 uses
  %.042446.us.us.i304 = phi ptr [ %i.agh, %._crit_edge.us.us.i309 ], [ %gep.us.i293, %.lr.ph51.us.i291 ] ; 5 uses
  %.042645.us.us.i305 = phi ptr [ %i.agg, %._crit_edge.us.us.i309 ], [ %i.acf, %.lr.ph51.us.i291 ] ; 5 uses
  %i.aej = load i8, ptr %.042247.us.us.i303, align 1, !tbaa !27 ; 2 uses
  %i.aek = zext i8 %i.aej to i32                  ; 4 uses
  %brmerge981 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx428
  br i1 %brmerge981, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i300
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aek, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %index
  %wide.load = load <4 x i8>, ptr %i.ael, align 1, !tbaa !27, !alias.scope !348
  %i.aem = zext <4 x i8> %wide.load to <4 x i32>
  %i.aen = sub nsw <4 x i32> %broadcast.splat, %i.aem
  %i.aeo = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aen, i1 true) ; 2 uses
  %i.aep = trunc nuw <4 x i32> %i.aeo to <4 x i8>
  %i.aeq = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %index
  store <4 x i8> %i.aep, ptr %i.aeq, align 1, !tbaa !27, !alias.scope !349, !noalias !350
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %index ; 2 uses
  %wide.load429 = load <4 x i32>, ptr %i.aer, align 4, !tbaa !8, !alias.scope !351, !noalias !348
  %i.aes = add nsw <4 x i32> %i.aeo, %wide.load429
  store <4 x i32> %i.aes, ptr %i.aer, align 4, !tbaa !8, !alias.scope !351, !noalias !348
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aet = icmp eq i64 %index.next, %n.vec
  br i1 %i.aet, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i309, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i300, %middle.block
  %indvars.iv136.i306.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i300 ] ; 6 uses
  br i1 %lcmp.mod920.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aeu = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv136.i306.ph
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !27
  %i.aew = zext i8 %i.aev to i32
  %i.aex = sub nsw i32 %i.aek, %i.aew
  %i.aey = call i32 @llvm.abs.i32(i32 %i.aex, i1 true) ; 2 uses
  %i.aez = trunc nuw i32 %i.aey to i8
  %i.afa = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv136.i306.ph
  store i8 %i.aez, ptr %i.afa, align 1, !tbaa !27
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv136.i306.ph ; 2 uses
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !8
  %i.afd = add nsw i32 %i.aey, %i.afc
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !8
  %indvars.iv.next137.i307.prol = or disjoint i64 %indvars.iv136.i306.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv136.i306.unr = phi i64 [ %indvars.iv136.i306.ph, %scalar.ph.preheader ], [ %indvars.iv.next137.i307.prol, %scalar.ph.prol ]
  %i.afe = icmp eq i64 %indvars.iv136.i306.ph, %i.adw
  br i1 %i.afe, label %._crit_edge.us.us.i309, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv136.i306 = phi i64 [ %indvars.iv.next137.i307.1, %scalar.ph ], [ %indvars.iv136.i306.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv136.i306
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !27
  %i.afh = zext i8 %i.afg to i32
  %i.afi = sub nsw i32 %i.aek, %i.afh
  %i.afj = call i32 @llvm.abs.i32(i32 %i.afi, i1 true) ; 2 uses
  %i.afk = trunc nuw i32 %i.afj to i8
  %i.afl = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv136.i306
  store i8 %i.afk, ptr %i.afl, align 1, !tbaa !27
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv136.i306 ; 2 uses
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !8
  %i.afo = add nsw i32 %i.afj, %i.afn
  store i32 %i.afo, ptr %i.afm, align 4, !tbaa !8
  %indvars.iv.next137.i307 = add nuw nsw i64 %indvars.iv136.i306, 1 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.041948.us.us.i302, i64 %indvars.iv.next137.i307
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !27
  %i.afr = zext i8 %i.afq to i32
  %i.afs = sub nsw i32 %i.aek, %i.afr
  %i.aft = call i32 @llvm.abs.i32(i32 %i.afs, i1 true) ; 2 uses
  %i.afu = trunc nuw i32 %i.aft to i8
  %i.afv = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %indvars.iv.next137.i307
  store i8 %i.afu, ptr %i.afv, align 1, !tbaa !27
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %indvars.iv.next137.i307 ; 2 uses
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !8
  %i.afy = add nsw i32 %i.aft, %i.afx
  store i32 %i.afy, ptr %i.afw, align 4, !tbaa !8
  %indvars.iv.next137.i307.1 = add nuw nsw i64 %indvars.iv136.i306, 2 ; 2 uses
  %exitcond140.not.i308.1 = icmp eq i64 %indvars.iv.next137.i307.1, %wide.trip.count139.i290
  br i1 %exitcond140.not.i308.1, label %._crit_edge.us.us.i309, label %scalar.ph, !llvm.loop !275

._crit_edge.us.us.i309:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.afz = zext i8 %i.aej to i64
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.afz
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !27
  %i.agc = zext i8 %i.agb to i32
  %i.agd = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %indvars.iv141.i301 ; 2 uses
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !8
  %i.agf = add nsw i32 %i.age, %i.agc
  store i32 %i.agf, ptr %i.agd, align 4, !tbaa !8
  %indvars.iv.next142.i310 = add nsw i64 %indvars.iv141.i301, 1 ; 2 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %.042645.us.us.i305, i64 %i.acz
  %i.agh = getelementptr inbounds nuw i8, ptr %.042446.us.us.i304, i64 %i.acz
  %i.agi = getelementptr inbounds i8, ptr %.042247.us.us.i303, i64 %i.ada
  %i.agj = getelementptr inbounds i8, ptr %.041948.us.us.i302, i64 %i.ada
  %exitcond145.not.i311 = icmp eq i64 %indvars.iv.next142.i310, %wide.trip.count144.i289
  br i1 %exitcond145.not.i311, label %._crit_edge52.split.us.us.i312, label %.lr.ph.us.us.i300, !llvm.loop !276

._crit_edge52.split.us.us.i312:                   ; preds = %._crit_edge.us.us.i309
  %indvars.iv.next147.i313 = add nsw i64 %indvars.iv146.i292, 1 ; 2 uses
  %exitcond151.not.i314 = icmp eq i64 %indvars.iv.next147.i313, %wide.trip.count150.i288
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond151.not.i314, label %.preheader43.i102, label %.lr.ph51.us.i291, !llvm.loop !277

.preheader43.i102:                                ; preds = %._crit_edge52.split.i283, %._crit_edge52.split.us.us.i312, %.lr.ph.i266, %bb.aq
  %i.agk = icmp sgt i32 %i.dx, 0                  ; 2 uses
  br i1 %i.agk, label %.preheader42.lr.ph.i214, label %._crit_edge67.i103

.preheader42.lr.ph.i214:                          ; preds = %.preheader43.i102
  %i.agl = icmp sgt i32 %i.dq, 0
  %i.agm = add nuw i32 %i.dr, 1
  %i.agn = add i32 %i.agm, %i.dz                  ; 3 uses
  %i.ago = icmp slt i32 %i.agn, %i.dv             ; 2 uses
  br i1 %i.agl, label %.preheader42.lr.ph.split.us.i230, label %.preheader42.lr.ph.split.i215

.preheader42.lr.ph.split.us.i230:                 ; preds = %.preheader42.lr.ph.i214
  br i1 %i.ago, label %.preheader42.us.us.preheader.i245, label %.preheader42.us.preheader.i231

.preheader42.us.preheader.i231:                   ; preds = %.preheader42.lr.ph.split.us.i230
  %sext260.i232 = shl i64 %i.aap, 32
  %i.agp = ashr exact i64 %sext260.i232, 32
  %wide.trip.count169.i233 = zext nneg i32 %i.dx to i64
  %wide.trip.count164.i234 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check443 = icmp ult i32 %i.dq, 8
  %n.vec445 = and i64 %wide.trip.count164.i234, 2147483640 ; 3 uses
  %broadcast.splatinsert446 = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %broadcast.splat447 = shufflevector <4 x i32> %broadcast.splatinsert446, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n452 = icmp eq i64 %n.vec445, %wide.trip.count164.i234
  br label %.preheader42.us.i235

.preheader42.us.us.preheader.i245:                ; preds = %.preheader42.lr.ph.split.us.i230
  %i.agq = sext i32 %i.agn to i64                 ; 3 uses
  %sext261.i246 = shl i64 %i.aap, 32
  %i.agr = ashr exact i64 %sext261.i246, 32
  %wide.trip.count184.i247 = zext nneg i32 %i.dx to i64
  %wide.trip.count174.i248 = zext nneg i32 %i.dq to i64 ; 3 uses
  %min.iters.check467 = icmp ult i32 %i.dq, 8
  %n.vec469 = and i64 %wide.trip.count174.i248, 2147483640 ; 3 uses
  %broadcast.splatinsert470 = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %broadcast.splat471 = shufflevector <4 x i32> %broadcast.splatinsert470, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n476 = icmp eq i64 %n.vec469, %wide.trip.count174.i248
  %i.ags = xor i32 %i.do, -1
  %i.agt = zext i32 %i.ags to i64
  %i.agu = add nuw nsw i64 %i.agt, 1              ; 2 uses
  %min.iters.check455 = icmp ugt i32 %i.do, -8
  %n.vec457 = and i64 %i.agu, 8589934584          ; 3 uses
  %i.agv = add nsw i64 %n.vec457, %i.agq
  %broadcast.splatinsert458 = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %broadcast.splat459 = shufflevector <4 x i32> %broadcast.splatinsert458, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n464 = icmp eq i64 %i.agu, %n.vec457
  br label %.preheader42.us.us.i249

.preheader42.us.us.i249:                          ; preds = %._crit_edge65.us.us.i263, %.preheader42.us.us.preheader.i245
  %indvars.iv181.i250 = phi i64 [ 0, %.preheader42.us.us.preheader.i245 ], [ %indvars.iv.next182.i264, %._crit_edge65.us.us.i263 ] ; 2 uses
  %i.agw = mul nsw i64 %indvars.iv181.i250, %i.agr
  %invariant.gep270.i251 = getelementptr [4 x i8], ptr %.val86, i64 %i.agw ; 4 uses
  br i1 %min.iters.check467, label %scalar.ph466.preheader, label %vector.body472

vector.body472:                                   ; preds = %.preheader42.us.us.i249, %vector.body472
  %index473 = phi i64 [ %index.next474, %vector.body472 ], [ 0, %.preheader42.us.us.i249 ] ; 2 uses
  %i.agx = getelementptr [4 x i8], ptr %invariant.gep270.i251, i64 %index473 ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 16
  store <4 x i32> %broadcast.splat471, ptr %i.agx, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat471, ptr %i.agy, align 4, !tbaa !8
  %index.next474 = add nuw i64 %index473, 8       ; 2 uses
  %i.agz = icmp eq i64 %index.next474, %n.vec469
  br i1 %i.agz, label %middle.block475, label %vector.body472, !llvm.loop !278

middle.block475:                                  ; preds = %vector.body472
  br i1 %cmp.n476, label %._crit_edge.us.us68.i256.preheader, label %scalar.ph466.preheader

scalar.ph466.preheader:                           ; preds = %.preheader42.us.us.i249, %middle.block475
  %indvars.iv171.i252.ph = phi i64 [ 0, %.preheader42.us.us.i249 ], [ %n.vec469, %middle.block475 ]
  br label %scalar.ph466

scalar.ph466:                                     ; preds = %scalar.ph466.preheader, %scalar.ph466
  %indvars.iv171.i252 = phi i64 [ %indvars.iv.next172.i254, %scalar.ph466 ], [ %indvars.iv171.i252.ph, %scalar.ph466.preheader ] ; 2 uses
  %gep271.i253 = getelementptr [4 x i8], ptr %invariant.gep270.i251, i64 %indvars.iv171.i252
  store i32 %i.aaf, ptr %gep271.i253, align 4, !tbaa !8
  %indvars.iv.next172.i254 = add nuw nsw i64 %indvars.iv171.i252, 1 ; 2 uses
  %exitcond175.not.i255 = icmp eq i64 %indvars.iv.next172.i254, %wide.trip.count174.i248
  br i1 %exitcond175.not.i255, label %._crit_edge.us.us68.i256.preheader, label %scalar.ph466, !llvm.loop !279

._crit_edge.us.us68.i256.preheader:               ; preds = %scalar.ph466, %middle.block475
end_hunk_3
begin_hunk_4_@_ZNK2cv24FindStereoCorrespInvokerclERKNS_5RangeE:bb.a
vector.ph456:                                     ; preds = %._crit_edge.us.us68.i256.preheader
  %invariant.gep957 = getelementptr [4 x i8], ptr %invariant.gep270.i251, i64 %i.agq
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph456
  %index461 = phi i64 [ 0, %vector.ph456 ], [ %index.next462, %vector.body460 ] ; 2 uses
  %gep958 = getelementptr [4 x i8], ptr %invariant.gep957, i64 %index461 ; 2 uses
  %i.aha = getelementptr i8, ptr %gep958, i64 16
  store <4 x i32> %broadcast.splat459, ptr %gep958, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat459, ptr %i.aha, align 4, !tbaa !8
  %index.next462 = add nuw i64 %index461, 8       ; 2 uses
  %i.ahb = icmp eq i64 %index.next462, %n.vec457
  br i1 %i.ahb, label %middle.block463, label %vector.body460, !llvm.loop !280

middle.block463:                                  ; preds = %vector.body460
  br i1 %cmp.n464, label %._crit_edge65.us.us.i263, label %._crit_edge.us.us68.i256.preheader915

._crit_edge.us.us68.i256.preheader915:            ; preds = %._crit_edge.us.us68.i256.preheader, %middle.block463
  %indvars.iv176.i258.ph = phi i64 [ %i.agq, %._crit_edge.us.us68.i256.preheader ], [ %i.agv, %middle.block463 ]
  br label %._crit_edge.us.us68.i256

._crit_edge.us.us68.i256:                         ; preds = %._crit_edge.us.us68.i256.preheader915, %._crit_edge.us.us68.i256
  %indvars.iv176.i258 = phi i64 [ %indvars.iv.next177.i260, %._crit_edge.us.us68.i256 ], [ %indvars.iv176.i258.ph, %._crit_edge.us.us68.i256.preheader915 ] ; 2 uses
  %gep273.i259 = getelementptr [4 x i8], ptr %invariant.gep270.i251, i64 %indvars.iv176.i258
  store i32 %i.aaf, ptr %gep273.i259, align 4, !tbaa !8
  %indvars.iv.next177.i260 = add nsw i64 %indvars.iv176.i258, 1 ; 2 uses
  %lftr.wideiv179.i261 = trunc i64 %indvars.iv.next177.i260 to i32
  %exitcond180.not.i262 = icmp eq i32 %i.dv, %lftr.wideiv179.i261
  br i1 %exitcond180.not.i262, label %._crit_edge65.us.us.i263, label %._crit_edge.us.us68.i256, !llvm.loop !281

._crit_edge65.us.us.i263:                         ; preds = %._crit_edge.us.us68.i256, %middle.block463
  %indvars.iv.next182.i264 = add nuw nsw i64 %indvars.iv181.i250, 1 ; 2 uses
  %exitcond185.not.i265 = icmp eq i64 %indvars.iv.next182.i264, %wide.trip.count184.i247
  br i1 %exitcond185.not.i265, label %._crit_edge67.i103, label %.preheader42.us.us.i249, !llvm.loop !282

.preheader42.us.i235:                             ; preds = %._crit_edge.us.i242, %.preheader42.us.preheader.i231
  %indvars.iv166.i236 = phi i64 [ 0, %.preheader42.us.preheader.i231 ], [ %indvars.iv.next167.i243, %._crit_edge.us.i242 ] ; 2 uses
  %i.ahc = mul nsw i64 %indvars.iv166.i236, %i.agp
  %invariant.gep268.i237 = getelementptr [4 x i8], ptr %.val86, i64 %i.ahc ; 2 uses
  br i1 %min.iters.check443, label %scalar.ph442.preheader, label %vector.body448

vector.body448:                                   ; preds = %.preheader42.us.i235, %vector.body448
  %index449 = phi i64 [ %index.next450, %vector.body448 ], [ 0, %.preheader42.us.i235 ] ; 2 uses
  %i.ahd = getelementptr [4 x i8], ptr %invariant.gep268.i237, i64 %index449 ; 2 uses
  %i.ahe = getelementptr i8, ptr %i.ahd, i64 16
  store <4 x i32> %broadcast.splat447, ptr %i.ahd, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat447, ptr %i.ahe, align 4, !tbaa !8
  %index.next450 = add nuw i64 %index449, 8       ; 2 uses
  %i.ahf = icmp eq i64 %index.next450, %n.vec445
  br i1 %i.ahf, label %middle.block451, label %vector.body448, !llvm.loop !283

middle.block451:                                  ; preds = %vector.body448
  br i1 %cmp.n452, label %._crit_edge.us.i242, label %scalar.ph442.preheader

scalar.ph442.preheader:                           ; preds = %.preheader42.us.i235, %middle.block451
  %indvars.iv161.i238.ph = phi i64 [ 0, %.preheader42.us.i235 ], [ %n.vec445, %middle.block451 ]
  br label %scalar.ph442

scalar.ph442:                                     ; preds = %scalar.ph442.preheader, %scalar.ph442
  %indvars.iv161.i238 = phi i64 [ %indvars.iv.next162.i240, %scalar.ph442 ], [ %indvars.iv161.i238.ph, %scalar.ph442.preheader ] ; 2 uses
  %gep269.i239 = getelementptr [4 x i8], ptr %invariant.gep268.i237, i64 %indvars.iv161.i238
  store i32 %i.aaf, ptr %gep269.i239, align 4, !tbaa !8
  %indvars.iv.next162.i240 = add nuw nsw i64 %indvars.iv161.i238, 1 ; 2 uses
  %exitcond165.not.i241 = icmp eq i64 %indvars.iv.next162.i240, %wide.trip.count164.i234
  br i1 %exitcond165.not.i241, label %._crit_edge.us.i242, label %scalar.ph442, !llvm.loop !284

._crit_edge.us.i242:                              ; preds = %scalar.ph442, %middle.block451
  %indvars.iv.next167.i243 = add nuw nsw i64 %indvars.iv166.i236, 1 ; 2 uses
  %exitcond170.not.i244 = icmp eq i64 %indvars.iv.next167.i243, %wide.trip.count169.i233
  br i1 %exitcond170.not.i244, label %._crit_edge67.i103, label %.preheader42.us.i235, !llvm.loop !282

.preheader42.lr.ph.split.i215:                    ; preds = %.preheader42.lr.ph.i214
  br i1 %i.ago, label %.preheader42.preheader.i216, label %._crit_edge67.i103

.preheader42.preheader.i216:                      ; preds = %.preheader42.lr.ph.split.i215
  %i.ahg = sext i32 %i.agn to i64                 ; 3 uses
  %sext259.i217 = shl i64 %i.aap, 32
  %i.ahh = ashr exact i64 %sext259.i217, 32
  %wide.trip.count159.i218 = zext nneg i32 %i.dx to i64
  %i.ahi = xor i32 %i.do, -1
  %i.ahj = zext i32 %i.ahi to i64
  %i.ahk = add nuw nsw i64 %i.ahj, 1              ; 2 uses
  %min.iters.check431 = icmp ugt i32 %i.do, -8
  %n.vec433 = and i64 %i.ahk, 8589934584          ; 3 uses
  %i.ahl = add nsw i64 %n.vec433, %i.ahg
  %broadcast.splatinsert434 = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %broadcast.splat435 = shufflevector <4 x i32> %broadcast.splatinsert434, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n440 = icmp eq i64 %i.ahk, %n.vec433
  br label %.preheader42.i219

.lr.ph51.i274:                                    ; preds = %._crit_edge52.split.i283, %.lr.ph51.preheader.i271
  %storemerge53.i275 = phi i32 [ %i.aio, %._crit_edge52.split.i283 ], [ %i.acq, %.lr.ph51.preheader.i271 ] ; 2 uses
  %.sroa.speculated15.i276 = call i32 @llvm.smax.i32(i32 %storemerge53.i275, i32 %i.acs)
  %.sroa.speculated11.i277 = call i32 @llvm.smin.i32(i32 %i.acu, i32 %.sroa.speculated15.i276)
  %i.ahm = sext i32 %.sroa.speculated11.i277 to i64
  %gep55.i278 = getelementptr i8, ptr %invariant.gep54.i267, i64 %i.ahm ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph51.i274
  %i.ahn = load i8, ptr %gep55.i278, align 1, !tbaa !27
  %i.aho = zext i8 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.aho
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !27
  %i.ahr = zext i8 %i.ahq to i32
  %i.ahs = load i32, ptr %i.ade, align 4, !tbaa !8
  %i.aht = add nsw i32 %i.ahs, %i.ahr
  store i32 %i.aht, ptr %i.ade, align 4, !tbaa !8
  %i.ahu = getelementptr inbounds i8, ptr %gep55.i278, i64 %i.ada
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph51.i274
  %indvars.iv.i279.unr = phi i64 [ %i.adc, %.lr.ph51.i274 ], [ %indvars.iv.next.i281.prol, %.prol.loopexit.unr-lcssa ]
  %.042247.i280.unr = phi ptr [ %gep55.i278, %.lr.ph51.i274 ], [ %i.ahu, %.prol.loopexit.unr-lcssa ]
  br i1 %i.adg, label %._crit_edge52.split.i283, label %.lr.ph51.i274.new

.lr.ph51.i274.new:                                ; preds = %.prol.loopexit, %.lr.ph51.i274.new
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i281.1, %.lr.ph51.i274.new ], [ %indvars.iv.i279.unr, %.prol.loopexit ] ; 3 uses
  %.042247.i280 = phi ptr [ %i.ain, %.lr.ph51.i274.new ], [ %.042247.i280.unr, %.prol.loopexit ] ; 2 uses
  %i.ahv = load i8, ptr %.042247.i280, align 1, !tbaa !27
  %i.ahw = zext i8 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !27
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %indvars.iv.i279 ; 2 uses
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !8
  %i.aic = add nsw i32 %i.aib, %i.ahz
  store i32 %i.aic, ptr %i.aia, align 4, !tbaa !8
  %i.aid = getelementptr inbounds i8, ptr %.042247.i280, i64 %i.ada ; 2 uses
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !27
  %i.aif = zext i8 %i.aie to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.aif
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !27
  %i.aii = zext i8 %i.aih to i32
  %i.aij = getelementptr [4 x i8], ptr %i.abt, i64 %indvars.iv.i279
  %i.aik = getelementptr i8, ptr %i.aij, i64 4    ; 2 uses
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !8
  %i.aim = add nsw i32 %i.ail, %i.aii
  store i32 %i.aim, ptr %i.aik, align 4, !tbaa !8
  %indvars.iv.next.i281.1 = add nsw i64 %indvars.iv.i279, 2 ; 2 uses
  %i.ain = getelementptr inbounds i8, ptr %i.aid, i64 %i.ada
  %exitcond.not.i282.1 = icmp eq i64 %indvars.iv.next.i281.1, %wide.trip.count.i273
  br i1 %exitcond.not.i282.1, label %._crit_edge52.split.i283, label %.lr.ph51.i274.new, !llvm.loop !276

._crit_edge52.split.i283:                         ; preds = %.lr.ph51.i274.new, %.prol.loopexit
  %i.aio = add nsw i32 %storemerge53.i275, 1      ; 2 uses
  %exitcond135.not.i284 = icmp eq i32 %i.aio, %smax.i272
  br i1 %exitcond135.not.i284, label %.preheader43.i102, label %.lr.ph51.i274, !llvm.loop !277

.preheader42.i219:                                ; preds = %._crit_edge65.i227, %.preheader42.preheader.i216
  %indvars.iv156.i220 = phi i64 [ 0, %.preheader42.preheader.i216 ], [ %indvars.iv.next157.i228, %._crit_edge65.i227 ] ; 2 uses
  %i.aip = mul nsw i64 %indvars.iv156.i220, %i.ahh
  %invariant.gep267.i221 = getelementptr [4 x i8], ptr %.val86, i64 %i.aip ; 2 uses
  br i1 %min.iters.check431, label %scalar.ph430.preheader, label %vector.ph432

vector.ph432:                                     ; preds = %.preheader42.i219
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep267.i221, i64 %i.ahg
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph432
  %index437 = phi i64 [ 0, %vector.ph432 ], [ %index.next438, %vector.body436 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index437 ; 2 uses
  %i.aiq = getelementptr i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat435, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat435, ptr %i.aiq, align 4, !tbaa !8
  %index.next438 = add nuw i64 %index437, 8       ; 2 uses
  %i.air = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.air, label %middle.block439, label %vector.body436, !llvm.loop !285

middle.block439:                                  ; preds = %vector.body436
  br i1 %cmp.n440, label %._crit_edge65.i227, label %scalar.ph430.preheader

scalar.ph430.preheader:                           ; preds = %.preheader42.i219, %middle.block439
  %indvars.iv152.i222.ph = phi i64 [ %i.ahg, %.preheader42.i219 ], [ %i.ahl, %middle.block439 ]
  br label %scalar.ph430

scalar.ph430:                                     ; preds = %scalar.ph430.preheader, %scalar.ph430
  %indvars.iv152.i222 = phi i64 [ %indvars.iv.next153.i224, %scalar.ph430 ], [ %indvars.iv152.i222.ph, %scalar.ph430.preheader ] ; 2 uses
  %gep.i223 = getelementptr [4 x i8], ptr %invariant.gep267.i221, i64 %indvars.iv152.i222
  store i32 %i.aaf, ptr %gep.i223, align 4, !tbaa !8
  %indvars.iv.next153.i224 = add nsw i64 %indvars.iv152.i222, 1 ; 2 uses
  %lftr.wideiv.i225 = trunc i64 %indvars.iv.next153.i224 to i32
  %exitcond155.not.i226 = icmp eq i32 %i.dv, %lftr.wideiv.i225
  br i1 %exitcond155.not.i226, label %._crit_edge65.i227, label %scalar.ph430, !llvm.loop !286

._crit_edge65.i227:                               ; preds = %scalar.ph430, %middle.block439
  %indvars.iv.next157.i228 = add nuw nsw i64 %indvars.iv156.i220, 1 ; 2 uses
  %exitcond160.not.i229 = icmp eq i64 %indvars.iv.next157.i228, %wide.trip.count159.i218
  br i1 %exitcond160.not.i229, label %._crit_edge67.i103, label %.preheader42.i219, !llvm.loop !282

._crit_edge67.i103:                               ; preds = %._crit_edge65.i227, %._crit_edge.us.i242, %._crit_edge65.us.us.i263, %.preheader42.lr.ph.split.i215, %.preheader43.i102
  %.not453117.i104 = icmp slt i32 %i.dz, 0
  br i1 %.not453117.i104, label %_ZN2cvL26findStereoCorrespondenceBMIiEEvRKNS_3MatES3_RS1_S4_RKNS_14StereoBMParamsEiiRKNS_8BufferBMEm.exit, label %.lr.ph121.i105

.lr.ph121.i105:                                   ; preds = %._crit_edge67.i103
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %.val86, i64 %i.aaj
  %i.ait = add nsw i32 %i.df, 1                   ; 2 uses
  %i.aiu = sub nsw i32 0, %i.dr                   ; 2 uses
  %i.aiv = xor i32 %i.dr, -1
  %i.aiw = add i32 %i.dv, %i.aiv                  ; 2 uses
  %i.aix = mul i32 %i.di, %i.aao
  %i.aiy = sext i32 %i.aix to i64                 ; 2 uses
  %i.aiz = sub nsw i64 0, %i.aiy                  ; 2 uses
  %invariant.gep123.i106 = getelementptr i8, ptr %i.aak, i64 %i.aiz ; 2 uses
  %invariant.gep127.i107 = getelementptr i8, ptr %i.aam, i64 %i.aiz
  %i.aja = icmp sgt i32 %i.aaq, %i.dj
  %i.ajb = icmp sgt i32 %i.dm, 0                  ; 4 uses
  %i.ajc = sext i32 %i.dm to i64                  ; 7 uses
  %sext.i108 = shl i64 %i.aan, 32
  %i.ajd = ashr exact i64 %sext.i108, 32          ; 5 uses
  %.not45580.i109 = icmp sgt i32 %i.cw, %i.dg
  %i.aje = sext i32 %i.aaq to i64                 ; 3 uses
  %i.ajf = getelementptr [4 x i8], ptr %i.abt, i64 %i.aje
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -4
  %i.ajh = icmp slt i32 %i.acq, %i.dj
  %i.aji = sext i32 %i.dj to i64                  ; 5 uses
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.aji
  %i.ajk = add nsw i32 %i.dg, 2
  %i.ajl = sub i32 %i.ajk, %i.di                  ; 6 uses
  %i.ajm = sub i32 1, %i.di                       ; 3 uses
  %i.ajn = mul i32 %i.ajm, %i.dm
  %i.ajo = sext i32 %i.ajn to i64                 ; 2 uses
  %i.ajp = getelementptr [4 x i8], ptr %i.abn, i64 %i.ajo ; 2 uses
  %i.ajq = icmp sge i32 %i.ajm, %i.dg
  %i.ajr = icmp eq i32 %i.dm, 0
  %i.ajs = add nsw i32 %i.aaq, -1
  %i.ajt = icmp sgt i32 %i.ed, 0
  %i.aju = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.ajv = getelementptr [4 x i8], ptr %i.abf, i64 %i.ajc ; 2 uses
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 -8
  %smin.i110 = sext i32 %i.dk to i64              ; 3 uses
  %i.ajx = sext i32 %i.dx to i64
  %i.ajy = sext i32 %i.acq to i64                 ; 6 uses
  %smax219.i112 = call i32 @llvm.abs.i32(i32 %i.dg, i1 false)
  %i.ajz = sext i32 %i.dg to i64
  %i.aka = shl i64 %i.aap, 32
  %i.akb = ashr exact i64 %i.aka, 32              ; 3 uses
  %i.akc = add i32 %i.dy, 1
  %i.akd = add i32 %i.akc, %i.ds
  %wide.trip.count240.i113 = zext i32 %i.akd to i64
  %wide.trip.count189.i114 = zext i32 %i.dm to i64 ; 21 uses
  %invariant.gep274.i115 = getelementptr [4 x i8], ptr %i.abt, i64 %i.ajx ; 2 uses
  %brmerge.i117 = select i1 %i.ajq, i1 true, i1 %i.ajr
  %wide.trip.count220.i119 = zext i32 %smax219.i112 to i64 ; 2 uses
  %wide.trip.count235.i120 = zext nneg i32 %i.dx to i64
  %i.ake = shl nuw nsw i64 %wide.trip.count189.i114, 2
  %i.akf = getelementptr i8, ptr %i.abd, i64 %i.ake
  %scevgep492 = getelementptr i8, ptr %i.akf, i64 4
  %i.akg = add i32 %i.dg, %i.di
  %i.akh = add i32 %i.akg, -2
  %i.aki = zext i32 %i.akh to i64
  %i.akj = mul nsw i64 %i.ajc, %i.aki
  %i.akk = add i64 %i.akj, %i.abm
  %i.akl = add i64 %i.akk, %i.ajo
  %i.akm = add i64 %i.akl, %wide.trip.count189.i114
  %i.akn = shl i64 %i.akm, 2
  %scevgep493 = getelementptr i8, ptr %i.abj, i64 %i.akn
  %i.ako = shl nsw i64 %i.abm, 2
  %i.akp = add i64 %i.ako, %i.abk
  %i.akq = shl nsw i64 %i.acd, 2
  %i.akr = sub i64 %i.akq, %i.akp
  %i.aks = xor i64 %i.aji, -1
  %i.akt = add nsw i64 %i.aks, %i.aje             ; 2 uses
  %i.aku = mul i64 %i.akt, %i.ajc                 ; 2 uses
  %i.akv = add i64 %i.aku, %i.abm
  %i.akw = add i64 %i.akv, %wide.trip.count189.i114
  %i.akx = sub i64 %i.akw, %i.acd                 ; 2 uses
  %scevgep553 = getelementptr i8, ptr %i.abx, i64 %i.akx
  %i.aky = add i64 %i.aku, %i.abm
  %i.akz = add i64 %i.aky, %wide.trip.count189.i114
  %i.ala = sub i64 %i.akz, %i.acd
  %i.alb = shl i64 %i.ala, 2
  %scevgep556.a = getelementptr i8, ptr %i.abj, i64 %i.alb ; 3 uses
  %i.alc = mul i64 %i.akt, %i.ajd
  %i.ald = add i64 %i.alc, %wide.trip.count189.i114
  %i.ale = add i64 %i.ald, %i.aal
  %i.alf = sub i64 %i.ale, %i.aiy
  %scevgep561 = getelementptr i8, ptr %.val, i64 %i.alf
  %39 = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %40 = zext nneg i32 %i.dz to i64
  %scevgep565 = getelementptr i8, ptr %i.abx, i64 %i.akx
  %i.alg = add nsw i64 %wide.trip.count189.i114, -1 ; 2 uses
  %min.iters.check597 = icmp ult i32 %i.dm, 20
  %stride.check576 = icmp slt i64 %i.ajd, 0
  %n.vec599 = and i64 %wide.trip.count189.i114, 2147483644 ; 3 uses
  %cmp.n609 = icmp eq i64 %n.vec599, %wide.trip.count189.i114
  %i.alh = sub i32 %i.dg, %i.dk                   ; 2 uses
  %i.ali = zext i32 %i.alh to i64
  %i.alj = add nuw nsw i64 %i.ali, 1              ; 2 uses
  %min.iters.check539 = icmp ult i32 %i.alh, 7
  %n.vec541 = and i64 %i.alj, 8589934584          ; 3 uses
  %i.alk = add nsw i64 %n.vec541, %smin.i110
  %invariant.gep959 = getelementptr [4 x i8], ptr %invariant.gep274.i115, i64 %smin.i110
  %cmp.n548 = icmp eq i64 %i.alj, %n.vec541
  %i.all = sub nsw i32 0, %i.dg
  %i.alm = sext i32 %i.all to i64
  %i.aln = add nsw i64 %i.aji, 1
  %i.alo = sub nsw i64 %i.aln, %i.alm             ; 3 uses
  %min.iters.check527 = icmp ult i64 %i.alo, 8
  %n.vec529 = and i64 %i.alo, -8                  ; 3 uses
  %i.alp = add nsw i64 %n.vec529, %i.ajy
  %invariant.gep961 = getelementptr [4 x i8], ptr %i.abt, i64 %i.ajy
  %cmp.n536 = icmp eq i64 %i.alo, %n.vec529
  %min.iters.check513 = icmp ult i32 %i.dm, 8
  %op.rdx899 = add i64 %i.akr, 3
  %op.rdx900 = add i64 %op.rdx899, %i.abe
  %diff.check = icmp ult i64 %op.rdx900, 31
  %or.cond897 = select i1 %min.iters.check513, i1 true, i1 %diff.check
  %n.vec515 = and i64 %wide.trip.count189.i114, 2147483640 ; 3 uses
  %broadcast.splatinsert516 = insertelement <4 x i32> poison, i32 %i.ajl, i64 0
  %broadcast.splat517 = shufflevector <4 x i32> %broadcast.splatinsert516, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n524 = icmp eq i64 %n.vec515, %wide.trip.count189.i114
  %xtraiter921 = and i64 %wide.trip.count189.i114, 3 ; 2 uses
  %lcmp.mod922.not = icmp eq i64 %xtraiter921, 0
  %min.iters.check498 = icmp ult i32 %i.dm, 8
  %bound0494 = icmp ult ptr %i.abf, %scevgep493
  %bound1495 = icmp ult ptr %i.ajp, %scevgep492
  %found.conflict496 = and i1 %bound0494, %bound1495
  %n.vec500 = and i64 %wide.trip.count189.i114, 2147483640 ; 3 uses
  %cmp.n509 = icmp eq i64 %n.vec500, %wide.trip.count189.i114
  %xtraiter923 = and i64 %wide.trip.count189.i114, 3 ; 2 uses
  %lcmp.mod924.not = icmp eq i64 %xtraiter923, 0
  %i.alq = sub nsw i32 0, %i.dg
  %i.alr = sext i32 %i.alq to i64
  %i.als = add nuw nsw i64 %wide.trip.count220.i119, 1
  %i.alt = sub nsw i64 %i.als, %i.alr             ; 3 uses
  %min.iters.check479 = icmp ult i64 %i.alt, 8
  %n.vec481 = and i64 %i.alt, -8                  ; 3 uses
  %i.alu = add nsw i64 %n.vec481, %i.ajy
  %invariant.gep963 = getelementptr [4 x i8], ptr %i.abt, i64 %i.ajy
  %cmp.n489 = icmp eq i64 %i.alt, %n.vec481
  %xtraiter926 = and i64 %wide.trip.count189.i114, 1
  %i.alv = icmp eq i64 %i.alg, 0
  %unroll_iter = and i64 %wide.trip.count189.i114, 2147483646
  %lcmp.mod927.not = icmp eq i64 %xtraiter926, 0
  %lcmp.mod930 = trunc i32 %i.dm to i1
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge112.i140, %.lr.ph121.i105
  %indvars.iv237.i123 = phi i64 [ 0, %.lr.ph121.i105 ], [ %indvars.iv.next238.i141, %._crit_edge112.i140 ] ; 4 uses
  %.0418119.i124 = phi ptr [ %i.ais, %.lr.ph121.i105 ], [ %i.avh, %._crit_edge112.i140 ] ; 4 uses
  %i.alw = trunc i64 %indvars.iv237.i123 to i32
  %i.alx = add i32 %i.dg, %i.alw
  %i.aly = call i32 @llvm.smax.i32(i32 %39, i32 %i.alx)
  %smax558 = sext i32 %i.aly to i64
  %smin559 = call i64 @llvm.smin.i64(i64 %smax558, i64 %40)
  %scevgep562 = getelementptr i8, ptr %scevgep561, i64 %smin559 ; 2 uses
  %i.alz = load ptr, ptr %i.aat, align 8, !tbaa !79 ; 2 uses
  %.not454.i125 = icmp eq ptr %i.alz, null
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.alz, i64 %i.aaj
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %indvars.iv237.i123
  %i.amc = select i1 %.not454.i125, ptr %i.a, ptr %i.amb
  br i1 %i.aja, label %.lr.ph79.preheader.i192, label %.preheader41.i126

.lr.ph79.preheader.i192:                          ; preds = %bb.ar
  %i.amd = trunc i64 %indvars.iv237.i123 to i32   ; 3 uses
  %i.ame = add i32 %i.dg, %i.amd                  ; 3 uses
  %i.amf = call i32 @llvm.smax.i32(i32 %i.ame, i32 %i.ds)
  %i.amg = call i32 @llvm.smin.i32(i32 %i.amf, i32 %i.dz)
  %i.amh = sext i32 %i.amg to i64
  %gep128.i193 = getelementptr i8, ptr %invariant.gep127.i107, i64 %i.amh ; 3 uses
  %i.ami = call i32 @llvm.smax.i32(i32 %i.ame, i32 %i.aiu)
  %i.amj = call i32 @llvm.smin.i32(i32 %i.ami, i32 %i.aiw)
  %i.amk = sext i32 %i.amj to i64
  %gep126.i194 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.amk
  %i.aml = add i32 %i.amd, %i.acq
  %i.amm = call i32 @llvm.smax.i32(i32 %i.aml, i32 %i.aiu)
  %..i195 = call i32 @llvm.smin.i32(i32 %i.amm, i32 %i.aiw)
  %i.amn = sext i32 %..i195 to i64
  %gep124.i196 = getelementptr i8, ptr %invariant.gep123.i106, i64 %i.amn
  %i.amo = add i32 %i.ame, %i.dh
  %i.amp = srem i32 %i.amo, %i.ait
  %i.amq = mul i32 %i.amp, %i.aas
  %i.amr = sext i32 %i.amq to i64                 ; 2 uses
  %gep116.i197 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.amr ; 4 uses
  %i.ams = srem i32 %i.amd, %i.ait
  %i.amt = mul i32 %i.ams, %i.aas
  %i.amu = sext i32 %i.amt to i64                 ; 2 uses
  %scevgep554 = getelementptr i8, ptr %invariant.gep.i101, i64 %i.amu ; 3 uses
  %scevgep564 = getelementptr i8, ptr %scevgep553, i64 %i.amr ; 3 uses
  %scevgep566 = getelementptr i8, ptr %scevgep565, i64 %i.amu ; 2 uses
  %bound0567 = icmp ult ptr %gep116.i197, %scevgep556.a
  %bound1568 = icmp ult ptr %i.acf, %scevgep564
  %found.conflict569 = and i1 %bound0567, %bound1568
  %bound0572 = icmp ult ptr %gep116.i197, %scevgep562
  %bound1573 = icmp ult ptr %gep128.i193, %scevgep564
  %found.conflict574 = and i1 %bound0572, %bound1573
  %i.amv = or i1 %found.conflict574, %stride.check576
  %conflict.rdx577 = or i1 %found.conflict569, %i.amv
  %bound0578 = icmp ult ptr %gep116.i197, %scevgep566
  %bound1579 = icmp ult ptr %scevgep554, %scevgep564
  %found.conflict580 = and i1 %bound0578, %bound1579
  %conflict.rdx583 = or i1 %conflict.rdx577, %found.conflict580
  %bound0584 = icmp ult ptr %i.acf, %scevgep562
  %bound1585 = icmp ult ptr %gep128.i193, %scevgep556.a
  %found.conflict586 = and i1 %bound0584, %bound1585
  %conflict.rdx589 = or i1 %found.conflict586, %conflict.rdx583
  %bound0590 = icmp ult ptr %i.acf, %scevgep566
  %bound1591 = icmp ult ptr %scevgep554, %scevgep556.a
  %found.conflict592 = and i1 %bound0590, %bound1591
  %conflict.rdx595 = or i1 %conflict.rdx589, %found.conflict592
  br label %.lr.ph79.i199

.preheader41.i126:                                ; preds = %._crit_edge.i207, %bb.ar
  br i1 %.not45580.i109, label %.preheader40.i135, label %.lr.ph82.preheader.i127

.lr.ph82.preheader.i127:                          ; preds = %.preheader41.i126
  %.pre.i128 = load i32, ptr %i.ajg, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check539, label %.lr.ph82.i129.preheader, label %vector.ph540

vector.ph540:                                     ; preds = %.lr.ph82.preheader.i127
  %broadcast.splatinsert542 = insertelement <4 x i32> poison, i32 %.pre.i128, i64 0
  %broadcast.splat543 = shufflevector <4 x i32> %broadcast.splatinsert542, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph540
  %index545 = phi i64 [ 0, %vector.ph540 ], [ %index.next546, %vector.body544 ] ; 2 uses
  %gep960 = getelementptr [4 x i8], ptr %invariant.gep959, i64 %index545 ; 2 uses
  %i.amw = getelementptr i8, ptr %gep960, i64 16
  store <4 x i32> %broadcast.splat543, ptr %gep960, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat543, ptr %i.amw, align 4, !tbaa !8
  %index.next546 = add nuw i64 %index545, 8       ; 2 uses
  %i.amx = icmp eq i64 %index.next546, %n.vec541
  br i1 %i.amx, label %middle.block547, label %vector.body544, !llvm.loop !287

middle.block547:                                  ; preds = %vector.body544
  br i1 %cmp.n548, label %.preheader40.i135, label %.lr.ph82.i129.preheader

.lr.ph82.i129.preheader:                          ; preds = %.lr.ph82.preheader.i127, %middle.block547
  %indvars.iv196.i130.ph = phi i64 [ %smin.i110, %.lr.ph82.preheader.i127 ], [ %i.alk, %middle.block547 ]
  br label %.lr.ph82.i129

.lr.ph79.i199:                                    ; preds = %._crit_edge.i207, %.lr.ph79.preheader.i192
  %indvars.iv191.i200 = phi i64 [ %i.aji, %.lr.ph79.preheader.i192 ], [ %indvars.iv.next192.i208, %._crit_edge.i207 ] ; 2 uses
  %.041776.i201 = phi ptr [ %scevgep554, %.lr.ph79.preheader.i192 ], [ %i.aoo, %._crit_edge.i207 ] ; 3 uses
  %.142075.i202 = phi ptr [ %gep128.i193, %.lr.ph79.preheader.i192 ], [ %i.aos, %._crit_edge.i207 ] ; 3 uses
  %.042174.i203 = phi ptr [ %gep124.i196, %.lr.ph79.preheader.i192 ], [ %i.aor, %._crit_edge.i207 ] ; 2 uses
  %.142373.i204 = phi ptr [ %gep126.i194, %.lr.ph79.preheader.i192 ], [ %i.aoq, %._crit_edge.i207 ] ; 2 uses
  %.142572.i205 = phi ptr [ %gep116.i197, %.lr.ph79.preheader.i192 ], [ %i.aon, %._crit_edge.i207 ] ; 3 uses
  %.142771.i206 = phi ptr [ %i.acf, %.lr.ph79.preheader.i192 ], [ %i.aop, %._crit_edge.i207 ] ; 3 uses
  %i.amy = load i8, ptr %.142373.i204, align 1, !tbaa !27 ; 2 uses
  %i.amz = zext i8 %i.amy to i32                  ; 2 uses
  br i1 %i.ajb, label %.lr.ph70.i210.preheader, label %._crit_edge.i207

.lr.ph70.i210.preheader:                          ; preds = %.lr.ph79.i199
  %brmerge982 = select i1 %min.iters.check597, i1 true, i1 %conflict.rdx595
  br i1 %brmerge982, label %.lr.ph70.i210.preheader909, label %vector.ph598

vector.ph598:                                     ; preds = %.lr.ph70.i210.preheader
  %broadcast.splatinsert600 = insertelement <4 x i32> poison, i32 %i.amz, i64 0
  %broadcast.splat601 = shufflevector <4 x i32> %broadcast.splatinsert600, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body602

vector.body602:                                   ; preds = %vector.body602, %vector.ph598
  %index603 = phi i64 [ 0, %vector.ph598 ], [ %index.next607, %vector.body602 ] ; 5 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.142075.i202, i64 %index603
  %wide.load604 = load <4 x i8>, ptr %i.ana, align 1, !tbaa !27, !alias.scope !352
  %i.anb = zext <4 x i8> %wide.load604 to <4 x i32>
  %i.anc = sub nsw <4 x i32> %broadcast.splat601, %i.anb
  %i.and = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.anc, i1 true) ; 2 uses
  %i.ane = trunc nuw <4 x i32> %i.and to <4 x i8>
  %i.anf = getelementptr inbounds nuw i8, ptr %.142572.i205, i64 %index603
  store <4 x i8> %i.ane, ptr %i.anf, align 1, !tbaa !27, !alias.scope !353, !noalias !354
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %.142771.i206, i64 %index603 ; 2 uses
  %wide.load605 = load <4 x i32>, ptr %i.ang, align 4, !tbaa !8, !alias.scope !355, !noalias !356
  %i.anh = add nsw <4 x i32> %i.and, %wide.load605
  %i.ani = getelementptr inbounds nuw i8, ptr %.041776.i201, i64 %index603
  %wide.load606 = load <4 x i8>, ptr %i.ani, align 1, !tbaa !27, !alias.scope !357
  %i.anj = zext <4 x i8> %wide.load606 to <4 x i32>
  %i.ank = sub <4 x i32> %i.anh, %i.anj
  store <4 x i32> %i.ank, ptr %i.ang, align 4, !tbaa !8, !alias.scope !355, !noalias !356
  %index.next607 = add nuw i64 %index603, 4       ; 2 uses
  %i.anl = icmp eq i64 %index.next607, %n.vec599
  br i1 %i.anl, label %middle.block608, label %vector.body602, !llvm.loop !293

middle.block608:                                  ; preds = %vector.body602
  br i1 %cmp.n609, label %._crit_edge.i207, label %.lr.ph70.i210.preheader909

.lr.ph70.i210.preheader909:                       ; preds = %.lr.ph70.i210.preheader, %middle.block608
  %indvars.iv186.i211.ph = phi i64 [ %n.vec599, %middle.block608 ], [ 0, %.lr.ph70.i210.preheader ]
  br label %.lr.ph70.i210

.lr.ph70.i210:                                    ; preds = %.lr.ph70.i210.preheader909, %.lr.ph70.i210
  %indvars.iv186.i211 = phi i64 [ %indvars.iv.next187.i212, %.lr.ph70.i210 ], [ %indvars.iv186.i211.ph, %.lr.ph70.i210.preheader909 ] ; 5 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.142075.i202, i64 %indvars.iv186.i211
  %i.ann = load i8, ptr %i.anm, align 1, !tbaa !27
  %i.ano = zext i8 %i.ann to i32
  %i.anp = sub nsw i32 %i.amz, %i.ano
  %i.anq = call i32 @llvm.abs.i32(i32 %i.anp, i1 true) ; 2 uses
  %i.anr = trunc nuw i32 %i.anq to i8
  %i.ans = getelementptr inbounds nuw i8, ptr %.142572.i205, i64 %indvars.iv186.i211
  store i8 %i.anr, ptr %i.ans, align 1, !tbaa !27
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.142771.i206, i64 %indvars.iv186.i211 ; 2 uses
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !8
  %i.anv = add nsw i32 %i.anq, %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %.041776.i201, i64 %indvars.iv186.i211
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !27
  %i.any = zext i8 %i.anx to i32
  %i.anz = sub i32 %i.anv, %i.any
  store i32 %i.anz, ptr %i.ant, align 4, !tbaa !8
  %indvars.iv.next187.i212 = add nuw nsw i64 %indvars.iv186.i211, 1 ; 2 uses
  %exitcond190.not.i213 = icmp eq i64 %indvars.iv.next187.i212, %wide.trip.count189.i114
  br i1 %exitcond190.not.i213, label %._crit_edge.i207, label %.lr.ph70.i210, !llvm.loop !294

._crit_edge.i207:                                 ; preds = %.lr.ph70.i210, %middle.block608, %.lr.ph79.i199
  %i.aoa = zext i8 %i.amy to i64
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.aoa
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !27
  %i.aod = zext i8 %i.aoc to i32
  %i.aoe = load i8, ptr %.042174.i203, align 1, !tbaa !27
  %i.aof = zext i8 %i.aoe to i64
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.aof
  %i.aoh = load i8, ptr %i.aog, align 1, !tbaa !27
  %i.aoi = zext i8 %i.aoh to i32
  %i.aoj = sub nsw i32 %i.aod, %i.aoi
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %indvars.iv191.i200 ; 2 uses
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !8
  %i.aom = add nsw i32 %i.aoj, %i.aol
  store i32 %i.aom, ptr %i.aok, align 4, !tbaa !8
  %indvars.iv.next192.i208 = add nsw i64 %indvars.iv191.i200, 1 ; 2 uses
  %i.aon = getelementptr inbounds i8, ptr %.142572.i205, i64 %i.ajc
  %i.aoo = getelementptr inbounds i8, ptr %.041776.i201, i64 %i.ajc
  %i.aop = getelementptr inbounds [4 x i8], ptr %.142771.i206, i64 %i.ajc
  %i.aoq = getelementptr inbounds i8, ptr %.142373.i204, i64 %i.ajd
  %i.aor = getelementptr inbounds i8, ptr %.042174.i203, i64 %i.ajd
  %i.aos = getelementptr inbounds i8, ptr %.142075.i202, i64 %i.ajd
  %exitcond195.not.i209 = icmp eq i64 %indvars.iv.next192.i208, %i.aje
  br i1 %exitcond195.not.i209, label %.preheader41.i126, label %.lr.ph79.i199, !llvm.loop !295

.preheader40.i135:                                ; preds = %.lr.ph82.i129, %middle.block547, %.preheader41.i126
  br i1 %i.ajh, label %.lr.ph84.preheader.i186, label %.preheader39.i136

.lr.ph84.preheader.i186:                          ; preds = %.preheader40.i135
  %.pre242.i187 = load i32, ptr %i.ajj, align 4, !tbaa !8 ; 2 uses
  br i1 %min.iters.check527, label %.lr.ph84.i188.preheader, label %vector.ph528

vector.ph528:                                     ; preds = %.lr.ph84.preheader.i186
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %.pre242.i187, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body532

vector.body532:                                   ; preds = %vector.body532, %vector.ph528
  %index533 = phi i64 [ 0, %vector.ph528 ], [ %index.next534, %vector.body532 ] ; 2 uses
  %gep962 = getelementptr [4 x i8], ptr %invariant.gep961, i64 %index533 ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %gep962, i64 16
  store <4 x i32> %broadcast.splat531, ptr %gep962, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat531, ptr %i.aot, align 4, !tbaa !8
  %index.next534 = add nuw i64 %index533, 8       ; 2 uses
  %i.aou = icmp eq i64 %index.next534, %n.vec529
  br i1 %i.aou, label %middle.block535, label %vector.body532, !llvm.loop !296

middle.block535:                                  ; preds = %vector.body532
  br i1 %cmp.n536, label %.preheader39.i136, label %.lr.ph84.i188.preheader

.lr.ph84.i188.preheader:                          ; preds = %.lr.ph84.preheader.i186, %middle.block535
  %indvars.iv200.i189.ph = phi i64 [ %i.ajy, %.lr.ph84.preheader.i186 ], [ %i.alp, %middle.block535 ]
  br label %.lr.ph84.i188

.lr.ph82.i129:                                    ; preds = %.lr.ph82.i129.preheader, %.lr.ph82.i129
  %indvars.iv196.i130 = phi i64 [ %indvars.iv.next197.i132, %.lr.ph82.i129 ], [ %indvars.iv196.i130.ph, %.lr.ph82.i129.preheader ] ; 2 uses
  %gep275.i131 = getelementptr [4 x i8], ptr %invariant.gep274.i115, i64 %indvars.iv196.i130
  store i32 %.pre.i128, ptr %gep275.i131, align 4, !tbaa !8
  %indvars.iv.next197.i132 = add nsw i64 %indvars.iv196.i130, 1 ; 2 uses
  %lftr.wideiv198.i133 = trunc i64 %indvars.iv.next197.i132 to i32
  %exitcond199.not.i134 = icmp eq i32 %i.dh, %lftr.wideiv198.i133
  br i1 %exitcond199.not.i134, label %.preheader40.i135, label %.lr.ph82.i129, !llvm.loop !297

.preheader39.i136:                                ; preds = %.lr.ph84.i188, %middle.block535, %.preheader40.i135
  br i1 %i.ajb, label %.lr.ph86.i173.preheader, label %.preheader38.i137

.lr.ph86.i173.preheader:                          ; preds = %.preheader39.i136
  br i1 %or.cond897, label %.lr.ph86.i173.preheader911, label %vector.body518

vector.body518:                                   ; preds = %.lr.ph86.i173.preheader, %vector.body518
  %index519 = phi i64 [ %index.next522, %vector.body518 ], [ 0, %.lr.ph86.i173.preheader ] ; 3 uses
  %i.aov = sub nsw i64 %index519, %i.acd
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.aov ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  %wide.load520 = load <4 x i32>, ptr %i.aow, align 4, !tbaa !8
  %wide.load521 = load <4 x i32>, ptr %i.aox, align 4, !tbaa !8
  %i.aoy = mul nsw <4 x i32> %wide.load520, %broadcast.splat517
  %i.aoz = mul nsw <4 x i32> %wide.load521, %broadcast.splat517
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %index519 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 16
  store <4 x i32> %i.aoy, ptr %i.apa, align 4, !tbaa !8
  store <4 x i32> %i.aoz, ptr %i.apb, align 4, !tbaa !8
  %index.next522 = add nuw i64 %index519, 8       ; 2 uses
  %i.apc = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.apc, label %middle.block523, label %vector.body518, !llvm.loop !298

middle.block523:                                  ; preds = %vector.body518
  br i1 %cmp.n524, label %._crit_edge87.i177, label %.lr.ph86.i173.preheader911

.lr.ph86.i173.preheader911:                       ; preds = %.lr.ph86.i173.preheader, %middle.block523
  %indvars.iv205.i174.ph = phi i64 [ 0, %.lr.ph86.i173.preheader ], [ %n.vec515, %middle.block523 ] ; 3 uses
  %i.apd = sub nsw i64 %i.alg, %indvars.iv205.i174.ph
  br i1 %lcmp.mod922.not, label %.lr.ph86.i173.prol.loopexit, label %.lr.ph86.i173.prol

.lr.ph86.i173.prol:                               ; preds = %.lr.ph86.i173.preheader911, %.lr.ph86.i173.prol
  %indvars.iv205.i174.prol = phi i64 [ %indvars.iv.next206.i175.prol, %.lr.ph86.i173.prol ], [ %indvars.iv205.i174.ph, %.lr.ph86.i173.preheader911 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph86.i173.prol ], [ 0, %.lr.ph86.i173.preheader911 ]
  %i.ape = sub nsw i64 %indvars.iv205.i174.prol, %i.acd
  %i.apf = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !8
  %i.aph = mul nsw i32 %i.apg, %i.ajl
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv205.i174.prol
  store i32 %i.aph, ptr %i.api, align 4, !tbaa !8
  %indvars.iv.next206.i175.prol = add nuw nsw i64 %indvars.iv205.i174.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter921
  br i1 %prol.iter.cmp.not, label %.lr.ph86.i173.prol.loopexit, label %.lr.ph86.i173.prol, !llvm.loop !299

.lr.ph86.i173.prol.loopexit:                      ; preds = %.lr.ph86.i173.prol, %.lr.ph86.i173.preheader911
  %indvars.iv205.i174.unr = phi i64 [ %indvars.iv205.i174.ph, %.lr.ph86.i173.preheader911 ], [ %indvars.iv.next206.i175.prol, %.lr.ph86.i173.prol ]
  %i.apj = icmp ult i64 %i.apd, 3
  br i1 %i.apj, label %._crit_edge87.i177, label %.lr.ph86.i173

.lr.ph84.i188:                                    ; preds = %.lr.ph84.i188.preheader, %.lr.ph84.i188
  %indvars.iv200.i189 = phi i64 [ %indvars.iv.next201.i190, %.lr.ph84.i188 ], [ %indvars.iv200.i189.ph, %.lr.ph84.i188.preheader ] ; 2 uses
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %indvars.iv200.i189
  store i32 %.pre242.i187, ptr %i.apk, align 4, !tbaa !8
  %indvars.iv.next201.i190 = add nsw i64 %indvars.iv200.i189, 1 ; 2 uses
  %exitcond204.not.i191 = icmp eq i64 %indvars.iv.next201.i190, %i.aji
  br i1 %exitcond204.not.i191, label %.preheader39.i136, label %.lr.ph84.i188, !llvm.loop !300

.lr.ph86.i173:                                    ; preds = %.lr.ph86.i173.prol.loopexit, %.lr.ph86.i173
  %indvars.iv205.i174 = phi i64 [ %indvars.iv.next206.i175.3, %.lr.ph86.i173 ], [ %indvars.iv205.i174.unr, %.lr.ph86.i173.prol.loopexit ] ; 6 uses
  %i.apl = sub nsw i64 %indvars.iv205.i174, %i.acd
  %i.apm = getelementptr inbounds [4 x i8], ptr %i.abn, i64 %i.apl
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !8
  %i.apo = mul nsw i32 %i.apn, %i.ajl
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %indvars.iv205.i174
  store i32 %i.apo, ptr %i.app, align 4, !tbaa !8
  %indvars.iv.next206.i175 = add nuw nsw i64 %indvars.iv205.i174, 1 ; 2 uses
  %i.apq = sub nsw i64 %indvars.iv.next206.i175, %i.acd
end_hunk_4
