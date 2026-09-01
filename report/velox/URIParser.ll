Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/URIParser?download=true
inline.NumInlined: 215
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_123consumeQueryAndFragmentEPKcmRiRNS1_3URIE:bb.a
  %i.ad = load i32, ptr %i.n, align 1
  store i32 %i.ad, ptr %.sroa.434, align 4
  %.sroa.434.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.434, i64 4
  store ptr %i.n, ptr %.sroa.434.4..sroa_idx, align 4, !tbaa !9
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit

_ZN8facebook5velox10StringViewC2EPKci.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.q, ptr %i.ae, align 8, !tbaa !8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.434.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.434, i64 12, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.434)
  store i32 %i.o, ptr %2, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre = sext i32 %i.o to i64
  br label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit, %bb.b, %bb.a
  %.pre-phi = phi i64 [ %.pre, %_ZN8facebook5velox10StringViewC2EPKci.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.af = phi i32 [ %i.o, %_ZN8facebook5velox10StringViewC2EPKci.exit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ]
  %i.ag = icmp ugt i64 %1, %.pre-phi
  br i1 %i.ag, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %.pre-phi
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = icmp eq i8 %i.ai, 35
  br i1 %i.aj, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ak = add nsw i32 %i.af, 1
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 80
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_17consumeERKSt6bitsetILm128EEPKcmRiRb(ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook5velox9functions12_GLOBAL__N_116kQueryOrFragmentE, ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.am = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 3 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !8   ; 2 uses
  %i.ar = xor i32 %i.am, -1
  %i.as = add i32 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.q, !prof !22

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8, !noalias !34
  store i32 %i.as, ptr %4, align 16, !tbaa !9, !noalias !34
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.au, align 16, !tbaa !9, !noalias !34
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.23, i64 11, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8, !noalias !34
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.23) #9
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.p
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !9
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i28: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %common.resume

bb.q:                                             ; preds = %bb.m
  %i.bb = icmp samesign ult i32 %i.as, 13
  br i1 %i.bb, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %.sroa.4, align 4
  %i.bc = icmp eq i32 %i.as, 0
  br i1 %i.bc, label %_ZN8facebook5velox10StringViewC2EPKci.exit30, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.4.4..sroa_idx51 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  store ptr null, ptr %.sroa.4.4..sroa_idx51, align 4, !tbaa !9
  %i.bd = zext nneg i32 %i.as to i64
  %i.be = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bd) #8, !srcloc !17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4, ptr nonnull align 1 %i.ap, i64 %i.be, i1 false)
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit30

bb.t:                                             ; preds = %bb.q
  %i.bf = load i32, ptr %i.ap, align 1
  store i32 %i.bf, ptr %.sroa.4, align 4
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  store ptr %i.ap, ptr %.sroa.4.4..sroa_idx, align 4, !tbaa !9
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit30

_ZN8facebook5velox10StringViewC2EPKci.exit30:     ; preds = %bb.r, %bb.s, %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %i.as, ptr %i.bg, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  store i32 %i.aq, ptr %2, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit30, %bb.l, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #6

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_116consumeAuthorityEPKcmRiRNS1_3URIE(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i16 = alloca [12 x i8], align 4        ; 8 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %.sroa.4.i = alloca [12 x i8], align 4          ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.f = load i32, ptr %2, align 4, !tbaa !8
  store i32 %i.f, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_17consumeERKSt6bitsetILm128EEPKcmRiRb(ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook5velox9functions12_GLOBAL__N_126kIPVFutureSuffixOrUserInfoE, ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.g = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.not = icmp eq i64 %1, %i.h
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = icmp eq i8 %i.j, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.g, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = sext i32 %storemerge to i64              ; 3 uses
  %i.o = icmp eq i64 %1, %i.n
  br i1 %i.o, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %.not.i.i = icmp eq i8 %i.q, 91
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %storemerge, 1
  store i32 %i.r, ptr %i.a, align 4, !tbaa !8
  %i.s = call noundef zeroext i1 @_ZN8facebook5velox9functions21tryConsumeIPV6AddressEPKcmRi(ptr noundef nonnull readonly %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !8 ; 3 uses
  br i1 %i.s, label %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPVFutureEPKcmRi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = sext i32 %.pre.i.i to i64                ; 2 uses
  %i.u = icmp eq i64 %1, %i.t
  br i1 %i.u, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %.not.i.i.i = icmp eq i8 %i.w, 118
  br i1 %.not.i.i.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %.pre.i.i, 1                 ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = icmp ugt i64 %1, %i.y
  br i1 %i.z, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.k ], [ %i.y, %bb.j ] ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i.i.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9   ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i.i.i, label %.loopexit.i

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN8facebook5velox9functions12_GLOBAL__N_14kHexE, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not40.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not40.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i.i.i
  %indvars.iv.next.i.i.i = add i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %1
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i.i.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i.i.i
  %.030.lcssa.ph.i.i.i = trunc i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %6 = icmp ne i32 %i.x, %.030.lcssa.ph.i.i.i
  %i.ak = icmp ne i64 %1, %indvars.iv.i.i.i
  %or.cond.i.i.not18.i = and i1 %i.ak, %6
  %.not37.i.i.i = icmp eq i8 %i.ab, 46
  %or.cond.i = and i1 %.not37.i.i.i, %or.cond.i.i.not18.i
  br i1 %or.cond.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i.i.i
  %i.al = add nsw i32 %.030.lcssa.ph.i.i.i, 1     ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %1, %i.am
  br i1 %i.an, label %.lr.ph51.i.i.i, label %.loopexit.i

.lr.ph51.i.i.i:                                   ; preds = %bb.l, %bb.m
  %indvars.iv57.i.i.i = phi i64 [ %indvars.iv.next58.i.i.i, %bb.m ], [ %i.am, %bb.l ] ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %indvars.iv57.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9   ; 2 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.i.i.i: ; preds = %.lr.ph51.i.i.i
  %i.ar = zext nneg i8 %i.ap to i64               ; 2 uses
  %i.as = lshr i64 %i.ar, 6
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN8facebook5velox9functions12_GLOBAL__N_126kIPVFutureSuffixOrUserInfoE, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !10
  %i.av = and i64 %i.ar, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.au, %i.aw
  %.not41.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not41.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.i.i.i
  %indvars.iv.next58.i.i.i = add i64 %indvars.iv57.i.i.i, 1 ; 2 uses
  %exitcond15.not.i.i = icmp eq i64 %indvars.iv.next58.i.i.i, %1
  br i1 %exitcond15.not.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i, label %.lr.ph51.i.i.i, !llvm.loop !38

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i: ; preds = %bb.m, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.i.i.i, %.lr.ph51.i.i.i
  %.0.lcssa.ph.in.i.i.i = phi i64 [ %1, %bb.m ], [ %indvars.iv57.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.i.i.i ], [ %indvars.iv57.i.i.i, %.lr.ph51.i.i.i ]
  %.0.lcssa.ph.i.i.i = trunc i64 %.0.lcssa.ph.in.i.i.i to i32 ; 2 uses
  %.not42.i.i.i = icmp eq i32 %i.al, %.0.lcssa.ph.i.i.i
  br i1 %.not42.i.i.i, label %.loopexit.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPVFutureEPKcmRi.exit.i.i

_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPVFutureEPKcmRi.exit.i.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i, %bb.g
  %i.ay = phi i32 [ %.pre.i.i, %bb.g ], [ %.0.lcssa.ph.i.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i ] ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp eq i64 %1, %i.az
  br i1 %i.ba, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPVFutureEPKcmRi.exit.i.i
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %.not13.i.i = icmp eq i8 %i.bc, 93
  br i1 %.not13.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPLiteralEPKcmRi.exit.i, label %.loopexit.i

_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPLiteralEPKcmRi.exit.i: ; preds = %bb.n
  %i.bd = add nsw i32 %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

.loopexit.i:                                      ; preds = %bb.k, %.lr.ph.i.i.i, %bb.n, %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPVFutureEPKcmRi.exit.i.i, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit39.thread.i.i.i, %bb.l, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i.i.i, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 %storemerge, ptr %i.c, align 4, !tbaa !8
  %i.be = call fastcc noundef zeroext i1 @_ZN8facebook5velox9functions12_GLOBAL__N_121tryConsumeIPV4AddressEPKcmRi(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.be, label %bb.o, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i

bb.o:                                             ; preds = %.loopexit.i
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !8   ; 3 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp eq i64 %1, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9   ; 2 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i: ; preds = %bb.p
  %i.bl = zext nneg i8 %i.bj to i64               ; 2 uses
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @_ZN8facebook5velox9functions12_GLOBAL__N_114kFollowingHostE, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = and i64 %i.bl, 63
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bo, %i.bq
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i, label %bb.q

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i, %bb.p, %.loopexit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  call fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_17consumeERKSt6bitsetILm128EEPKcmRiRb(ptr noundef nonnull align 8 dereferenceable(16) @_ZN8facebook5velox9functions12_GLOBAL__N_18kRegNameE, ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.bs)
  %.pre25.pre.i = load i32, ptr %i.b, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i, %bb.o
  %.pre25.i = phi i32 [ %.pre25.pre.i, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i ], [ %i.bf, %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPLiteralEPKcmRi.exit.i
  %i.bt = phi i32 [ %i.bd, %_ZN8facebook5velox9functions12_GLOBAL__N_119tryConsumeIPLiteralEPKcmRi.exit.i ], [ %.pre25.i, %bb.q ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.n ; 3 uses
  %i.bv = sub nsw i32 %i.bt, %storemerge          ; 5 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.v, !prof !22

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8, !noalias !39
  store i32 %i.bv, ptr %4, align 16, !tbaa !9, !noalias !39
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bx, align 16, !tbaa !9, !noalias !39
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.23, i64 11, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8, !noalias !39
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10StringViewC1EPKciE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.23) #9
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.u
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !9
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %i.by

bb.v:                                             ; preds = %bb.r
  %i.ce = icmp samesign ult i32 %i.bv, 13
  br i1 %i.ce, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %.sroa.4.i, align 4
  %i.cf = icmp eq i32 %i.bt, %storemerge
  br i1 %i.cf, label %_ZN8facebook5velox9functions12_GLOBAL__N_111consumeHostEPKcmRiRNS1_3URIE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.4.i.4.i.4.i.4..sroa_idx52 = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  store ptr null, ptr %.sroa.4.i.4.i.4.i.4..sroa_idx52, align 4, !tbaa !9
  %i.cg = zext nneg i32 %i.bv to i64
  %i.ch = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cg) #8, !srcloc !17
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4.i, ptr align 1 %i.bu, i64 %i.ch, i1 false)
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111consumeHostEPKcmRiRNS1_3URIE.exit

bb.y:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.bu, align 1
  store i32 %i.ci, ptr %.sroa.4.i, align 4
  %.sroa.4.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  store ptr %i.bu, ptr %.sroa.4.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !9
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_111consumeHostEPKcmRiRNS1_3URIE.exit

_ZN8facebook5velox9functions12_GLOBAL__N_111consumeHostEPKcmRiRNS1_3URIE.exit: ; preds = %bb.w, %bb.x, %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %i.bv, ptr %i.cj, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.i, i64 12, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ck = sext i32 %i.bt to i64                   ; 2 uses
  %i.cl = icmp ugt i64 %1, %i.ck
  br i1 %i.cl, label %bb.z, label %bb.af

bb.z:                                             ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_111consumeHostEPKcmRiRNS1_3URIE.exit
  %i.cm = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = icmp eq i8 %i.cn, 58
  br i1 %i.co, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.cp = add nsw i32 %i.bt, 1                    ; 4 uses
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = icmp ugt i64 %1, %i.cq
  br i1 %i.cr, label %.lr.ph.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.i17

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ab
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ %i.cq, %bb.aa ] ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9   ; 2 uses
  %i.cu = icmp sgt i8 %i.ct, -1
  br i1 %i.cu, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i19, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.loopexit.i

_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.i19: ; preds = %.lr.ph.i
  %i.cv = zext nneg i8 %i.ct to i64               ; 2 uses
  %i.cw = lshr i64 %i.cv, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @_ZN8facebook5velox9functions12_GLOBAL__N_14kNumE, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !10
  %i.cz = and i64 %i.cv, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.cy, %i.da
  %.not.i20 = icmp eq i64 %i.db, 0
  br i1 %.not.i20, label %_ZN8facebook5velox9functions12_GLOBAL__N_14testERKSt6bitsetILm128EEc.exit.thread.loopexit.i, label %bb.ab

end_hunk_0
