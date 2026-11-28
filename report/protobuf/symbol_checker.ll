Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/symbol_checker?download=true
inline.NumInlined: 381
inline.NumDeleted: 263
begin_hunk_0_@_ZN6google8protobuf13SymbolChecker10InitializeEv:bb.a
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81, !nonnull !80, !align !82 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store ptr %0, ptr %1, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !85
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %.preheader38.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br label %bb.c

.preheader38.i.i:                                 ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph41.i.i, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit"

.lr.ph41.i.i:                                     ; preds = %.preheader38.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i
  %.0.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.k, ptr %i.z
  %i.aa = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !91
  call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.aa)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !85
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader38.i.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.d, %.lr.ph41.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph41.i.i ], [ %indvars.iv.next44.i.i, %bb.d ] ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ae, i64 %indvars.iv43.i.i
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = add i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv43.i.i
  %.0.i.i.i.i.i.i35.i.i = select i1 %i.aj, ptr %i.p, ptr %i.an
  %i.ao = load ptr, ptr %.0.i.i.i.i.i.i35.i.i, align 8, !tbaa !91
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ao)
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !86
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next44.i.i, %i.aq
  br i1 %i.ar, label %bb.d, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit", !llvm.loop !1

"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit": ; preds = %bb.d, %.preheader38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  store i8 1, ptr %0, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf13SymbolChecker26CheckSymbolVisibilityRulesEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.16") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !119 {
bb.a:
  %2 = alloca %"struct.google::protobuf::internal::VisitImpl", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !37, !range !79, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81, !nonnull !80, !align !82 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %1, ptr %2, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !85
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %.preheader38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  br label %.noexc

.preheader38.i.i.i:                               ; preds = %.noexc, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !86
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph41.i.i.i, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i"

.lr.ph41.i.i.i:                                   ; preds = %.preheader38.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  br label %.noexc24

.noexc:                                           ; preds = %.noexc, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %.noexc ] ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw [160 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.k, ptr %i.z
  %i.aa = load ptr, ptr %.0.i.i.i.i.i.i.i.i.i, align 8, !tbaa !91
  call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull readonly align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.r, ptr noundef nonnull align 8 dereferenceable(176) %i.aa)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !85
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i.i, %i.ac
  br i1 %i.ad, label %.noexc, label %.preheader38.i.i.i, !llvm.loop !0

.noexc24:                                         ; preds = %.noexc24, %.lr.ph41.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ 0, %.lr.ph41.i.i.i ], [ %indvars.iv.next44.i.i.i, %.noexc24 ] ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %i.ae, i64 %indvars.iv43.i.i.i
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = add i64 %i.ah, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv43.i.i.i
  %.0.i.i.i.i.i.i35.i.i.i = select i1 %i.aj, ptr %i.p, ptr %i.an
  %i.ao = load ptr, ptr %.0.i.i.i.i.i.i35.i.i.i, align 8, !tbaa !91
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(96) %i.ao)
  %indvars.iv.next44.i.i.i = add nuw nsw i64 %indvars.iv43.i.i.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !86
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next44.i.i.i, %i.aq
  br i1 %i.ar, label %.noexc24, label %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i", !llvm.loop !1

"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i": ; preds = %.noexc24, %.preheader38.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  store i8 1, ptr %1, align 8, !tbaa !37
  br label %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit

_ZN6google8protobuf13SymbolChecker10InitializeEv.exit: ; preds = %"_ZN6google8protobuf8internal16VisitDescriptorsIZNS0_13SymbolChecker10InitializeEvE3$_0EEvRKNS0_14FileDescriptorERKNS0_19FileDescriptorProtoET_.exit.i", %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !120 ; 2 uses
  %.not91 = icmp eq ptr %i.at, %i.av
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit
  %i.ay = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cs, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ]
  %i.az = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.ct, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ]
  %.lcssa88 = phi ptr [ null, %_ZN6google8protobuf13SymbolChecker10InitializeEv.exit ], [ %i.cu, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  store ptr %.lcssa88, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !121 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !121 ; 2 uses
  %.not7897 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not7897, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit
  %i.bg = phi ptr [ null, %.lr.ph ], [ %i.cs, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 9 uses
  %i.bh = phi ptr [ null, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %.sroa.075.092 = phi ptr [ %i.at, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.bi = phi ptr [ null, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit ] ; 11 uses
  %i.bj = load ptr, ptr %.sroa.075.092, align 8, !tbaa !123 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i16, ptr %i.bk, align 1
  %i.bm = and i16 %i.bl, 768
  %i.bn = icmp eq i16 %i.bm, 512
  br i1 %i.bn, label %bb.d, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !21
  %i.bs = icmp eq i32 %i.br, 4
  br i1 %i.bs, label %bb.e, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !125 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.bv, align 1
  %i.bw = zext i16 %.0.copyload.i.i.i to i64      ; 3 uses
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.075.092, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !126 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !19
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.by, ptr %.sroa.662.0..sroa_idx, align 8, !tbaa !20
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.ca, ptr %.sroa.765.0..sroa_idx, align 8, !tbaa !127
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 0, ptr %.sroa.868.0..sroa_idx, align 8, !tbaa !128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store ptr %i.cb, ptr %i.aw, align 8, !tbaa !131
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.cc = ptrtoint ptr %i.bg to i64
  %i.cd = ptrtoint ptr %i.bi to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775776
  br i1 %i.cf, label %bb.h, label %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.bi, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.cg = ashr exact i64 %i.ce, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 288230376151711743)
  %i.ck = select i1 %i.ci, i64 288230376151711743, i64 %i.cj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 5
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #13
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce ; 4 uses
  store i64 %i.bw, ptr %i.cn, align 8, !tbaa !19
  %.sroa.662.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.by, ptr %.sroa.662.0..sroa_idx63, align 8, !tbaa !20
  %.sroa.765.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.ca, ptr %.sroa.765.0..sroa_idx66, align 8, !tbaa !127
  %.sroa.868.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i32 0, ptr %.sroa.868.0..sroa_idx69, align 8, !tbaa !128
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc26, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %.noexc26 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %.noexc26 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !132, !alias.scope !133
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.co, %i.bg
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !115

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc26
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cm, %.noexc26 ], [ %i.cp, %.lr.ph.i.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.ce) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cq, ptr %i.aw, align 8, !tbaa !131
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  store ptr %i.cr, ptr %i.ax, align 8, !tbaa !134
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d, %bb.c
  %i.cs = phi ptr [ %i.bg, %bb.f ], [ %i.cr, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bg, %bb.d ], [ %i.bg, %bb.c ] ; 2 uses
  %i.ct = phi ptr [ %i.cb, %bb.f ], [ %i.cq, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bh, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.cu = phi ptr [ %i.bi, %bb.f ], [ %i.cm, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bi, %bb.d ], [ %i.bi, %bb.c ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.075.092, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.av
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge101:                                   ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46, %._crit_edge
  %.lcssa94 = phi ptr [ %.lcssa88, %._crit_edge ], [ %i.em, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ]
  store ptr %.lcssa94, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %.lr.ph100, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46
  %i.cw = phi ptr [ %i.ay, %.lr.ph100 ], [ %i.ek, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 9 uses
  %i.cx = phi ptr [ %i.az, %.lr.ph100 ], [ %i.el, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 8 uses
  %.sroa.057.098 = phi ptr [ %i.bb, %.lr.ph100 ], [ %i.en, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 3 uses
  %i.cy = phi ptr [ %.lcssa88, %.lr.ph100 ], [ %i.em, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46 ] ; 11 uses
  %i.cz = load ptr, ptr %.sroa.057.098, align 8, !tbaa !136 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = and i8 %i.db, 12
  %i.dd = icmp eq i8 %i.dc, 8
  br i1 %i.dd, label %bb.k, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !137
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 68
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !21
  %i.di = icmp eq i32 %i.dh, 4
  br i1 %i.di, label %bb.l, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !125 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %.0.copyload.i.i.i27 = load i16, ptr %i.dl, align 1
  %i.dm = zext i16 %.0.copyload.i.i.i27 to i64    ; 3 uses
  %i.dn = xor i64 %i.dm, -1
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.057.098, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !138 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cx, %i.cw
  br i1 %.not.i.i31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.dm, ptr %i.cx, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.dq, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !127
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !128
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  store ptr %i.dr, ptr %i.be, align 8, !tbaa !131
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

bb.n:                                             ; preds = %bb.l
  %i.ds = ptrtoint ptr %i.cw to i64
  %i.dt = ptrtoint ptr %i.cy to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775776
  br i1 %i.dv, label %bb.o, label %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32

bb.o:                                             ; preds = %bb.n
  store ptr %i.cy, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32: ; preds = %bb.n
  %i.dw = ashr exact i64 %i.du, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i33 = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i33, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 288230376151711743)
  %i.ea = select i1 %i.dy, i64 288230376151711743, i64 %i.dz ; 3 uses
  %.not.i.i.i.i34 = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i34)
  %i.eb = shl nuw nsw i64 %i.ea, 5
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #13
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 4 uses
  store i64 %i.dm, ptr %i.ed, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.do, ptr %.sroa.6.0..sroa_idx48, align 8, !tbaa !20
  %.sroa.7.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.dq, ptr %.sroa.7.0..sroa_idx50, align 8, !tbaa !127
  %.sroa.8.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i32 1, ptr %.sroa.8.0..sroa_idx52, align 8, !tbaa !128
  %.not10.i.i.i.i.i.i35 = icmp eq ptr %i.cy, %i.cw
  br i1 %.not10.i.i.i.i.i.i35, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.noexc45, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i36 ], [ %i.ec, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i.i.i38 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i36 ], [ %i.cy, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i38, i64 32, i1 false), !tbaa.struct !132, !alias.scope !139
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i38, i64 32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i37, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ee, %i.cw
  br i1 %.not.i.i.i.i.i.i39, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40, label %.lr.ph.i.i.i.i.i.i36, !llvm.loop !115

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i.i36, %.noexc45
  %.0.lcssa.i.i.i.i.i.i41 = phi ptr [ %i.ec, %.noexc45 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i36 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i41, i64 32 ; 2 uses
  %.not.i23.i.i.i42 = icmp eq ptr %i.cy, null
  br i1 %.not.i23.i.i.i42, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.du) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43: ; preds = %bb.p, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i40
  store ptr %i.eg, ptr %i.be, align 8, !tbaa !131
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.ea ; 2 uses
  store ptr %i.eh, ptr %i.bf, align 8, !tbaa !134
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.sink.split

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.sink.split

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.o
  %i.ei = phi ptr [ %i.bg, %bb.h ], [ %i.cw, %bb.o ]
  %i.ej = phi ptr [ %i.bi, %bb.h ], [ %i.cy, %bb.o ]
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.sink.split:                    ; preds = %.loopexit, %.loopexit.split-lp.loopexit
  %.lcssa145.sink = phi ptr [ %i.bi, %.loopexit.split-lp.loopexit ], [ %i.cy, %.loopexit ] ; 2 uses
  %.ph = phi ptr [ %i.bg, %.loopexit.split-lp.loopexit ], [ %i.cw, %.loopexit ]
  %lpad.phi.ph = phi { ptr, i32 } [ %lpad.loopexit79, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ]
  store ptr %.lcssa145.sink, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %3 = phi ptr [ %i.ei, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.ph, %.loopexit.split-lp.sink.split ]
  %4 = phi ptr [ %i.ej, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.lcssa145.sink, %.loopexit.split-lp.sink.split ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi.ph, %.loopexit.split-lp.sink.split ]
  %.not.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit, label %bb.q

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE9push_backEOS2_.exit46: ; preds = %bb.m, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43, %bb.k, %bb.j
  %i.ek = phi ptr [ %i.cw, %bb.m ], [ %i.eh, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cw, %bb.k ], [ %i.cw, %bb.j ]
  %i.el = phi ptr [ %i.dr, %bb.m ], [ %i.eg, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cx, %bb.k ], [ %i.cx, %bb.j ]
  %i.em = phi ptr [ %i.cy, %bb.m ], [ %i.ec, %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i43 ], [ %i.cy, %bb.k ], [ %i.cy, %bb.j ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.057.098, i64 16 ; 2 uses
  %.not78 = icmp eq ptr %i.en, %i.bd
  br i1 %.not78, label %._crit_edge101, label %bb.j

bb.q:                                             ; preds = %.loopexit.split-lp
  %i.eo = ptrtoint ptr %3 to i64
  %i.ep = ptrtoint ptr %4 to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.eq) #14
  br label %_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf18SymbolCheckerErrorESaIS2_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.q
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !142 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !144   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.e, align 8, !tbaa !147
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.d, align 8, !tbaa !145
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #12
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #13 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 3 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !147
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx5.i.i, align 8, !tbaa !148
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #14
  br label %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !149
  store ptr %i.w, ptr %i.d, align 8, !tbaa !145
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !146
  br label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"

"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorIN6google8protobuf8internal18DescriptorAndProtoINS1_10DescriptorENS1_15DescriptorProtoEEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !150
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader55

.lr.ph:                                           ; preds = %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  br label %bb.h

.preheader55:                                     ; preds = %bb.h, %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_10DescriptorENS0_15DescriptorProtoEEEDaRKT_RKT0_.exit"
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !151
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph58, label %.preheader52

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !152
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = add i64 %i.am, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %.0.i.i.i.i.i.i = select i1 %i.ao, ptr %i.af, ptr %i.as
  %i.at = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !91
  %.val49 = load ptr, ptr %0, align 8, !tbaa !144
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr %.val49, ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(96) %i.at)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i32, ptr %i.ab, align 4, !tbaa !150
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.h, label %.preheader55, !llvm.loop !140

.lr.ph58:                                         ; preds = %.preheader55
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.i

.preheader52:                                     ; preds = %bb.i, %.preheader55
  ret void

bb.i:                                             ; preds = %.lr.ph58, %bb.i
  %indvars.iv60 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next61, %bb.i ] ; 3 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw [160 x i8], ptr %i.az, i64 %indvars.iv60
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = add i64 %i.bc, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv60
  %.0.i.i.i.i.i.i50 = select i1 %i.be, ptr %i.ay, ptr %i.bi
  %i.bj = load ptr, ptr %.0.i.i.i.i.i.i50, align 8, !tbaa !91
  tail call fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_15DescriptorProtoEEEEvRKNS0_10DescriptorEDpRT_"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ba, ptr noundef nonnull align 8 dereferenceable(176) %i.bj)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bk = load i32, ptr %i.ag, align 8, !tbaa !151
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next61, %i.bl
  br i1 %i.bm, label %bb.i, label %.preheader52, !llvm.loop !141
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal9VisitImplINS1_11VisitorImplIZNS0_13SymbolChecker10InitializeEvE3$_0EEE5VisitIJKNS0_19EnumDescriptorProtoEEEEvRKNS0_14EnumDescriptorEDpRT_"(ptr nofree captures(none) %.0.val, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 align 2 !guid !154 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 7 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %"_ZZN6google8protobuf13SymbolChecker10InitializeEvENK3$_0clINS0_14EnumDescriptorENS0_19EnumDescriptorProtoEEEDaRKT_RKT0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = add i32 %i.h, -3
  %i.j = icmp ult i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, 12
  %.not.i.i.i = icmp eq i8 %i.m, 8
  br i1 %.not.i.i.i, label %bb.d, label %_ZN6google8protobuf13SymbolChecker16IsNamespacedEnumERKNS0_14EnumDescriptorE.exit.thread.i.i
end_hunk_0
