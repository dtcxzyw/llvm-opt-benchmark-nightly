Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/mimics_pcre?download=true
inline.NumInlined: 150
inline.NumDeleted: 85
begin_hunk_0_@_ZN3re26Regexp6WalkerIbE5ResetEv:bb.a
_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !48, !noalias !54
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19
  %i.v = icmp ugt i16 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.g

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread: ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.m, i64 -24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !19
  %i.aa = icmp ugt i16 %i.z, 1
  br i1 %i.aa, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2, label %bb.g

bb.d:                                             ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2: ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread, %bb.d
  %i.ac = phi ptr [ %i.ab, %bb.d ], [ %i.m, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread ]
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #17
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !52
  %.pre4 = load ptr, ptr %i.i, align 8, !tbaa !61
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.ag

bb.g:                                             ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2, %bb.e, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.ah = phi ptr [ %i.l, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread ], [ %i.l, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2 ], [ %.pre4, %bb.e ], [ %i.l, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 3 uses
  %i.ai = phi ptr [ %i.m, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit.thread ], [ %i.m, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit2 ], [ %.pre3, %bb.e ], [ %i.m, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -24
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef 504) #17
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 2 uses
  store ptr %i.al, ptr %i.j, align 8, !tbaa !48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42 ; 4 uses
  store ptr %i.am, ptr %i.i, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 504
  store ptr %i.an, ptr %i.k, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 480
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.h, %bb.i
  %i.ap = phi ptr [ %i.ah, %bb.h ], [ %i.am, %bb.i ]
  %storemerge.i.i = phi ptr [ %i.aj, %bb.h ], [ %i.ao, %bb.i ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !52
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.ar = icmp eq ptr %storemerge.i.i, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.c, !llvm.loop !62

.loopexit:                                        ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi17EEERS2_RAT__Kc.exit, %bb.a
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #11

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #13

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 7 uses
  %5 = alloca %"struct.re2::WalkState", align 8   ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"struct.re2::WalkState", align 8   ; 8 uses
  tail call void @_ZN3re26Regexp6WalkerIbE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 2) #19
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 9, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread80

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.e = zext i1 %2 to i8
  store ptr %1, ptr %5, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.e, ptr %i.g, align 4, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -24
  %.not.i.i.i = icmp eq ptr %i.j, %i.m
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !66
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.i, align 8, !tbaa !52
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.thread78

.thread78:                                        ; preds = %.thread78.backedge, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !53, !noalias !69 ; 2 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !49, !noalias !69
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit

bb.g:                                             ; preds = %.thread78
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !48, !noalias !69
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 504
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %.thread78, %bb.g
  %i.ae = phi ptr [ %i.ad, %bb.g ], [ %i.x, %.thread78 ] ; 12 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %cond = icmp eq i32 %i.ai, -1
  br i1 %cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.aj = load i32, ptr %i.r, align 4, !tbaa !37  ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.r, align 4, !tbaa !37
  %i.al = icmp slt i32 %i.aj, 1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.v, align 8, !tbaa !25
  %i.am = getelementptr inbounds i8, ptr %i.ae, i64 -12
  %i.an = load i8, ptr %i.am, align 4, !tbaa !64, !range !12, !noundef !13
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load ptr, ptr %0, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ag, i1 noundef zeroext %i.ao)
  %7 = zext i1 %i.as to i8
  br label %bb.z

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !10
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 -12
  %i.au = load i8, ptr %i.at, align 4, !tbaa !64, !range !12, !noundef !13
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load ptr, ptr %0, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ag, i1 noundef zeroext %i.av, ptr noundef nonnull %i.a)
  %i.ba = getelementptr inbounds i8, ptr %i.ae, i64 -11
  %i.bb = zext i1 %i.az to i8                     ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !72
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !10, !range !12, !noundef !13
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ah, align 8, !tbaa !63
  %i.be = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 3 uses
  store ptr null, ptr %i.be, align 8, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !19 ; 2 uses
  switch i16 %i.bg, label %bb.m [
    i16 1, label %bb.l
    i16 0, label %.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 -10
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !60
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bi = zext i16 %i.bg to i64
  %i.bj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #21
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !60
  %.pre.pre.pre = load i32, ptr %i.ah, align 8, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.pre.pre = phi i32 [ 0, %bb.k ], [ %.pre.pre.pre, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.z

bb.o:                                             ; preds = %.thread, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre = phi i32 [ %.pre.pre, %.thread ], [ %i.ai, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 6 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !19 ; 3 uses
  %.not70 = icmp eq i16 %i.bl, 0
  br i1 %.not70, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp eq i16 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.i = select i1 %i.bm, ptr %i.bn, ptr %i.bo   ; 3 uses
  %i.bp = zext i16 %i.bl to i32
  %.not71 = icmp slt i32 %.pre, %i.bp
  br i1 %.not71, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bq = icmp sgt i32 %.pre, 0
  %or.cond = and i1 %3, %i.bq
  br i1 %or.cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.br = add nsw i32 %.pre, -1
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bv = zext nneg i32 %.pre to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20
  %i.by = icmp eq ptr %i.bu, %i.bx
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !10, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load ptr, ptr %0, align 8, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %i.cd)
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.cj = load i32, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.ck
  %i.cm = zext i1 %i.ch to i8
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !10
  %i.cn = add nsw i32 %i.cj, 1
  store i32 %i.cn, ptr %i.ah, align 8, !tbaa !63
  br label %.thread78.backedge

bb.t:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.co = load i32, ptr %i.ah, align 8, !tbaa !63
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds i8, ptr %i.ae, i64 -11
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !72, !range !12, !noundef !13
  store ptr %i.cr, ptr %6, align 8, !tbaa !57
  store i32 -1, ptr %i.s, align 8, !tbaa !63
  store i8 %i.ct, ptr %i.t, align 4, !tbaa !64
  store ptr null, ptr %i.u, align 8, !tbaa !60
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -24
  %.not.i.i.i73 = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i.i.i73, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !66
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !52
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit74

bb.v:                                             ; preds = %bb.t
  call void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit74

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit74: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.thread78.backedge

.thread78.backedge:                               ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit74, %bb.s, %bb.ae
  br label %.thread78, !llvm.loop !73

bb.w:                                             ; preds = %bb.p, %bb.o
  %i.cz = getelementptr inbounds i8, ptr %i.ae, i64 -12
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !64, !range !12, !noundef !13
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds i8, ptr %i.ae, i64 -11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !72, !range !12, !noundef !13
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !60
  %i.dh = load ptr, ptr %0, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.ag, i1 noundef zeroext %i.db, i1 noundef zeroext %i.de, ptr noundef %i.dg, i32 noundef %.pre)
  %8 = zext i1 %i.dk to i8                        ; 3 uses
  %i.dl = load i16, ptr %i.bk, align 2, !tbaa !19
  %i.dm = icmp ugt i16 %i.dl, 1
  br i1 %i.dm, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !60 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.dn) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.w, %bb.y, %bb.x, %bb.i
  %.3 = phi i8 [ %7, %bb.i ], [ %8, %bb.x ], [ %8, %bb.y ], [ %8, %bb.w ], [ %i.bb, %bb.n ] ; 3 uses
  %i.dp = load ptr, ptr %i.i, align 8, !tbaa !52  ; 2 uses
  %i.dq = load ptr, ptr %i.p, align 8, !tbaa !61  ; 3 uses
  %.not.i.i = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.z
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -24 ; 4 uses
  store ptr %i.dr, ptr %i.i, align 8, !tbaa !52
  %i.ds = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %.thread82, label %bb.aa

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef 504) #17
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8 ; 2 uses
  store ptr %i.dv, ptr %i.q, align 8, !tbaa !48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42 ; 3 uses
  store ptr %i.dw, ptr %i.p, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 504
  store ptr %i.dx, ptr %i.k, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 480 ; 3 uses
  store ptr %i.dy, ptr %i.i, align 8, !tbaa !52
  %i.dz = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %.thread82, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit75

.thread82:                                        ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %9 = trunc nuw i8 %.3 to i1
  br label %.thread80

bb.aa:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.eb = icmp eq ptr %i.dr, %i.dq
  br i1 %i.eb, label %bb.ab, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit75

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load ptr, ptr %i.q, align 8, !tbaa !48, !noalias !74
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 504
  br label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit75

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit75: ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.aa, %bb.ab
  %i.eg = phi ptr [ %i.ef, %bb.ab ], [ %i.dr, %bb.aa ], [ %i.dy, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 5 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !60 ; 2 uses
  %.not72 = icmp eq ptr %i.ei, null
  br i1 %.not72, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit75
  %i.ej = getelementptr inbounds i8, ptr %i.eg, i64 -16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !63 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  store i8 %.3, ptr %i.em, align 1, !tbaa !10
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit75
  %i.en = getelementptr inbounds i8, ptr %i.eg, i64 -10
  store i8 %.3, ptr %i.en, align 2, !tbaa !77
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.eg, i64 -16
  %.pre83 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !63
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eo = phi i32 [ %.pre83, %bb.ad ], [ %i.ek, %bb.ac ]
  %i.ep = getelementptr inbounds i8, ptr %i.eg, i64 -16
  %i.eq = add nsw i32 %i.eo, 1
  store i32 %i.eq, ptr %i.ep, align 8, !tbaa !63
  br label %.thread78.backedge

.thread80:                                        ; preds = %.thread82, %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %.2 = phi i1 [ %2, %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit ], [ %9, %.thread82 ]
  ret i1 %.2
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 768614336404564650
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ag = load ptr, ptr %0, align 8, !tbaa !39
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !42
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !66
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !50
  store ptr %i.as, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN3re29WalkStateIbEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !39
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !78

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !42
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !42
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !78

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !42
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !42
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit, !prof !79

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !78

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN3re29WalkStateIbEES4_ET0_T_S6_S5_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateIbEESaIS2_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
end_hunk_0
