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
