inline.NumInlined: 1142
inline.NumDeleted: 385
begin_hunk_0_@_ZN3re26Regexp19RemoveLeadingStringEPS0_i:bb.a
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult i64 %.051, 4
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i64 %.051, 1
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.051
  store ptr %.0, ptr %i.f, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.e, %bb.d ], [ %.051, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.h = load i16, ptr %i.g, align 2, !tbaa !60
  %i.i = icmp ult i16 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i = select i1 %i.i, ptr %i.j, ptr %i.k
  %i.l = load ptr, ptr %.0.i, align 8, !tbaa !61
  br label %bb.b, !llvm.loop !95

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !26
  store i8 2, ptr %.0, align 8, !tbaa !25
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26   ; 3 uses
  %.not = icmp slt i32 %1, %i.o
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %i.p, align 8, !tbaa !26
  store i32 0, ptr %i.n, align 8, !tbaa !26
  store i8 2, ptr %.0, align 8, !tbaa !25
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.o, -1
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  tail call void @_ZdaPv(ptr noundef %i.v) #32
  store ptr null, ptr %i.u, align 8, !tbaa !26
  store i32 %i.y, ptr %i.n, align 8, !tbaa !26
  store i8 3, ptr %.0, align 8, !tbaa !25
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.z = sub nsw i32 %i.o, %1                     ; 2 uses
  store i32 %i.z, ptr %i.n, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = sext i32 %1 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = sext i32 %i.z to i64
  %i.af = shl nsw i64 %i.ae, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ab, ptr align 4 %i.ad, i64 %i.af, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.l, %bb.m, %bb.j, %bb.f
  %.not5764 = icmp eq i64 %.051, 0
  br i1 %.not5764, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.t
  %.265 = phi i64 [ %i.ag, %bb.t ], [ %.051, %.loopexit ]
  %i.ag = add i64 %.265, -1                       ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !60
  %i.al = icmp ult i16 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  %.0.i58 = select i1 %i.al, ptr %i.am, ptr %i.an ; 5 uses
  %i.ao = load ptr, ptr %.0.i58, align 8, !tbaa !61 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !25
  %i.aq = icmp eq i8 %i.ap, 2
  br i1 %i.aq, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.lr.ph
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
  store ptr null, ptr %.0.i58, align 8, !tbaa !61
  %i.ar = load i16, ptr %i.aj, align 2, !tbaa !60 ; 2 uses
  switch i16 %i.ar, label %bb.s [
    i16 0, label %bb.o
    i16 1, label %bb.o
    i16 2, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 871, i32 noundef 2) #36
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 10, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit unwind label %bb.q

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit: ; preds = %bb.o
  %i.as = load i16, ptr %i.aj, align 2, !tbaa !60
  %i.at = zext i16 %i.as to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.at, ptr %i.a, align 4, !tbaa !3
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  store ptr null, ptr %i.am, align 8, !tbaa !26
  store i8 2, ptr %i.ai, align 8, !tbaa !25
  br label %bb.t

bb.q:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  resume { ptr, i32 } %i.av

bb.r:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !61
  call void @_ZN3re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef %i.ax)
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ax)
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.ay = add i16 %i.ar, -1                       ; 2 uses
  store i16 %i.ay, ptr %i.aj, align 2, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8
  %i.ba = zext i16 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i58, ptr nonnull align 8 %i.az, i64 %i.bb, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.r, %bb.s, %.lr.ph
  %.not57 = icmp eq i64 %i.ag, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.t, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare void @_ZN3re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.e = alloca [2 x ptr], align 16               ; 6 uses
  %4 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !97
  store i32 %1, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN3re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc.preheader unwind label %bb.b

.noexc.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.noexc

.noexc:                                           ; preds = %.noexc.backedge, %.noexc.preheader
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !99   ; 12 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -48 ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -40 ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -36 ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !101  ; 5 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -24 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101  ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.t, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.c:                                             ; preds = %.noexc
  %i.t = load i32, ptr %i.n, align 8, !tbaa !3    ; 2 uses
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp slt i32 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %.preheader113

.preheader113:                                    ; preds = %bb.c
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !3
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader112, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = sext i32 %i.t to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !103
  %.not.i87 = icmp eq ptr %i.i, %i.ag
  br i1 %.not.i87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !3
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ak, i8 0, i64 28, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.al, ptr %i.f, align 8, !tbaa !112
  br label %.noexc.backedge

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN3re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
          to label %.noexc.backedge unwind label %bb.g

.noexc.backedge:                                  ; preds = %bb.f, %bb.e, %bb.aj, %_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit
  br label %.noexc

bb.g:                                             ; preds = %bb.f, %bb.w, %bb.v, %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.preheader112:                                    ; preds = %.preheader113, %.loopexit
  %.063136 = phi i32 [ %.2, %.loopexit ], [ 0, %.preheader113 ] ; 2 uses
  %.065135 = phi i32 [ %.267, %.loopexit ], [ 0, %.preheader113 ] ; 2 uses
  %.sroa.099.0134 = phi ptr [ %i.dg, %.loopexit ], [ %i.o, %.preheader113 ] ; 7 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !97  ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113 ; 4 uses
  %i.aq = sext i32 %.063136 to i64                ; 7 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq ; 7 uses
  %i.as = icmp ult ptr %i.ar, %i.ap
  br i1 %i.as, label %iter.check237, label %._crit_edge

iter.check237:                                    ; preds = %.preheader112
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.av = sext i32 %.065135 to i64                ; 7 uses
  %i.aw = add i64 %i.au, 8
  %i.ax = shl nsw i64 %i.aq, 3                    ; 2 uses
  %i.ay = add i64 %i.aw, %i.ax
  %umax = call i64 @llvm.umax.i64(i64 %i.at, i64 %i.ay)
  %i.az = xor i64 %i.au, -1
  %i.ba = add i64 %umax, %i.az
  %i.bb = sub i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 5 uses
  %min.iters.check219 = icmp ult i64 %i.bb, 24
  br i1 %min.iters.check219, label %.lr.ph.preheader, label %vector.memcheck217

vector.memcheck217:                               ; preds = %iter.check237
  %i.be = sub nsw i64 %i.av, %i.aq
  %i.bf = and i64 %i.be, 2305843009213693936
  %diff.check218 = icmp eq i64 %i.bf, 0
  br i1 %diff.check218, label %.lr.ph.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %vector.memcheck217
  %min.iters.check221 = icmp ult i64 %i.bb, 120
  br i1 %min.iters.check221, label %vec.epilog.ph241, label %vector.ph222

vector.ph222:                                     ; preds = %vector.main.loop.iter.check220
  %n.mod.vf223 = and i64 %i.bd, 12
  %n.vec224 = and i64 %i.bd, 4611686018427387888  ; 6 uses
  %i.bg = add nsw i64 %n.vec224, %i.av            ; 2 uses
  %i.bh = add nsw i64 %n.vec224, %i.aq            ; 2 uses
  %i.bi = shl i64 %n.vec224, 3
  %i.bj = getelementptr i8, ptr %i.ar, i64 %i.bi
  %invariant.gep = getelementptr [8 x i8], ptr %i.an, i64 %i.av
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next231, %vector.body225 ] ; 3 uses
  %i.bk = shl i64 %index226, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bk ; 4 uses
  %i.bl = getelementptr i8, ptr %next.gep, i64 32
  %i.bm = getelementptr i8, ptr %next.gep, i64 64
  %i.bn = getelementptr i8, ptr %next.gep, i64 96
  %wide.load227 = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !61
  %wide.load228 = load <4 x ptr>, ptr %i.bl, align 8, !tbaa !61
  %wide.load229 = load <4 x ptr>, ptr %i.bm, align 8, !tbaa !61
  %wide.load230 = load <4 x ptr>, ptr %i.bn, align 8, !tbaa !61
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index226 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x ptr> %wide.load227, ptr %gep, align 8, !tbaa !61
  store <4 x ptr> %wide.load228, ptr %i.bo, align 8, !tbaa !61
  store <4 x ptr> %wide.load229, ptr %i.bp, align 8, !tbaa !61
  store <4 x ptr> %wide.load230, ptr %i.bq, align 8, !tbaa !61
  %index.next231 = add nuw i64 %index226, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next231, %n.vec224
  br i1 %i.br, label %middle.block232, label %vector.body225, !llvm.loop !115

middle.block232:                                  ; preds = %vector.body225
  %cmp.n233 = icmp eq i64 %i.bd, %n.vec224
  br i1 %cmp.n233, label %._crit_edge.loopexit, label %vec.epilog.iter.check239

vec.epilog.iter.check239:                         ; preds = %middle.block232
  %min.epilog.iters.check240 = icmp eq i64 %n.mod.vf223, 0
  br i1 %min.epilog.iters.check240, label %.lr.ph.preheader, label %vec.epilog.ph241, !prof !116

vec.epilog.ph241:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check239
  %vec.epilog.resume.val234 = phi i64 [ %n.vec224, %vec.epilog.iter.check239 ], [ 0, %vector.main.loop.iter.check220 ]
  %n.vec243 = and i64 %i.bd, 4611686018427387900  ; 5 uses
  %i.bs = add nsw i64 %n.vec243, %i.av            ; 2 uses
  %i.bt = add nsw i64 %n.vec243, %i.aq            ; 2 uses
  %i.bu = shl i64 %n.vec243, 3
  %i.bv = getelementptr i8, ptr %i.ar, i64 %i.bu
  %invariant.gep269 = getelementptr [8 x i8], ptr %i.an, i64 %i.av
  br label %vec.epilog.vector.body244

vec.epilog.vector.body244:                        ; preds = %vec.epilog.vector.body244, %vec.epilog.ph241
  %index245 = phi i64 [ %vec.epilog.resume.val234, %vec.epilog.ph241 ], [ %index.next248, %vec.epilog.vector.body244 ] ; 3 uses
  %i.bw = shl i64 %index245, 3
  %next.gep246 = getelementptr i8, ptr %i.ar, i64 %i.bw
  %wide.load247 = load <4 x ptr>, ptr %next.gep246, align 8, !tbaa !61
  %gep270 = getelementptr [8 x i8], ptr %invariant.gep269, i64 %index245
  store <4 x ptr> %wide.load247, ptr %gep270, align 8, !tbaa !61
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.bx, label %vec.epilog.middle.block249, label %vec.epilog.vector.body244, !llvm.loop !117

vec.epilog.middle.block249:                       ; preds = %vec.epilog.vector.body244
  %cmp.n250 = icmp eq i64 %i.bd, %n.vec243
  br i1 %cmp.n250, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck217, %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block249
  %indvars.iv149.ph = phi i64 [ %i.av, %iter.check237 ], [ %i.av, %vector.memcheck217 ], [ %i.bg, %vec.epilog.iter.check239 ], [ %i.bs, %vec.epilog.middle.block249 ]
  %indvars.iv.ph = phi i64 [ %i.aq, %iter.check237 ], [ %i.aq, %vector.memcheck217 ], [ %i.bh, %vec.epilog.iter.check239 ], [ %i.bt, %vec.epilog.middle.block249 ]
  %.ph = phi ptr [ %i.ar, %iter.check237 ], [ %i.ar, %vector.memcheck217 ], [ %i.bj, %vec.epilog.iter.check239 ], [ %i.bv, %vec.epilog.middle.block249 ]
  br label %.lr.ph

._crit_edge137:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469181 = phi i32 [ %i.fa, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre162 = load ptr, ptr %i.m, align 8, !tbaa !118 ; 2 uses
  %.pre163 = load ptr, ptr %i.p, align 8, !tbaa !119
  %i.by = icmp eq ptr %.pre163, %.pre162
  br i1 %i.by, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader113, %._crit_edge137
  %.065.lcssa177 = phi i32 [ %.469181, %._crit_edge137 ], [ 0, %.preheader113 ]
  %i.bz = phi ptr [ %.pre162, %._crit_edge137 ], [ %i.o, %.preheader113 ]
  store ptr %i.bz, ptr %i.p, align 8, !tbaa !119
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit:  ; preds = %._crit_edge137, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa178 = phi i32 [ %.469181, %._crit_edge137 ], [ %.065.lcssa177, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa178, ptr %i.k, align 8, !tbaa !3
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.lr.ph ], [ %indvars.iv149.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ]
  %i.ca = phi ptr [ %i.cd, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv149
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !61
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.next ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.ap
  br i1 %i.ce, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !120

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block249, %middle.block232
  %indvars.iv.next.lcssa = phi i64 [ %i.bt, %vec.epilog.middle.block249 ], [ %i.bh, %middle.block232 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next150.lcssa = phi i64 [ %i.bs, %vec.epilog.middle.block249 ], [ %i.bg, %middle.block232 ], [ %indvars.iv.next150, %.lr.ph ]
  %i.cf = trunc nsw i64 %indvars.iv.next150.lcssa to i32
  %i.cg = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader112
  %.166.lcssa = phi i32 [ %.065135, %.preheader112 ], [ %i.cf, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063136, %.preheader112 ], [ %i.cg, %._crit_edge.loopexit ] ; 3 uses
  %i.ch = load i32, ptr %i.l, align 4, !tbaa !3
  switch i32 %i.ch, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.ci = load ptr, ptr %.sroa.099.0134, align 8, !tbaa !121
  store ptr %i.ci, ptr %i.e, align 16, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !122
  %i.cl = invoke noundef ptr @_ZN3re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.ap, i32 noundef %i.ck, i32 noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.cl, ptr %i.h, align 8, !tbaa !61
  %i.cm = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.co = add nsw i32 %.166.lcssa, 1
  %i.cp = sext i32 %.166.lcssa to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cp
  store ptr %i.cm, ptr %i.cq, align 8, !tbaa !61
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !123
  %i.ct = add nsw i32 %i.cs, %.164.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.s

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.am

bb.l:                                             ; preds = %._crit_edge
  %i.cv = load ptr, ptr %.sroa.099.0134, align 8, !tbaa !121
  %i.cw = add nsw i32 %.166.lcssa, 1
  %i.cx = sext i32 %.166.lcssa to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cx
  store ptr %i.cv, ptr %i.cy, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 16
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !123
  %i.db = add nsw i32 %i.da, %.164.lcssa
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 2) #36
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 15, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.q

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.n
  %i.dc = load i32, ptr %i.l, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.dc, ptr %i.b, align 4, !tbaa !3
  %i.dd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit, %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.df, %bb.q ], [ %i.de, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.am

bb.s:                                             ; preds = %bb.o, %bb.l, %bb.j
  %.267 = phi i32 [ %.166.lcssa, %bb.o ], [ %i.co, %bb.j ], [ %i.cw, %bb.l ] ; 3 uses
  %.2 = phi i32 [ %.164.lcssa, %bb.o ], [ %i.ct, %bb.j ], [ %i.db, %bb.l ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 24 ; 2 uses
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.di = icmp eq ptr %i.dg, %i.dh
  %.pre = load i32, ptr %i.k, align 8, !tbaa !3   ; 3 uses
  %i.dj = icmp slt i32 %.2, %.pre
  %or.cond = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.s
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !97  ; 14 uses
  %i.dl = sext i32 %.2 to i64                     ; 8 uses
  %i.dm = sext i32 %.267 to i64                   ; 7 uses
  %wide.trip.count = sext i32 %.pre to i64        ; 4 uses
  %i.dn = sub nsw i64 %wide.trip.count, %i.dl     ; 7 uses
  %min.iters.check = icmp ult i64 %i.dn, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.do = sub nsw i64 %i.dm, %i.dl
  %i.dp = and i64 %i.do, 2305843009213693936
  %diff.check = icmp eq i64 %i.dp, 0
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check204 = icmp ult i64 %i.dn, 16
  br i1 %min.iters.check204, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dn, 12
  %n.vec = and i64 %i.dn, -16                     ; 5 uses
  %i.dq = add nsw i64 %n.vec, %i.dm               ; 2 uses
  %i.dr = add nsw i64 %n.vec, %i.dl
  %invariant.gep271 = getelementptr [8 x i8], ptr %i.dk, i64 %i.dl
  %invariant.gep273 = getelementptr [8 x i8], ptr %i.dk, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep272 = getelementptr [8 x i8], ptr %invariant.gep271, i64 %index ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %gep272, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %gep272, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %gep272, i64 96
  %wide.load = load <4 x ptr>, ptr %gep272, align 8, !tbaa !61
  %wide.load205 = load <4 x ptr>, ptr %i.ds, align 8, !tbaa !61
  %wide.load206 = load <4 x ptr>, ptr %i.dt, align 8, !tbaa !61
  %wide.load207 = load <4 x ptr>, ptr %i.du, align 8, !tbaa !61
  %gep274 = getelementptr [8 x i8], ptr %invariant.gep273, i64 %index ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %gep274, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %gep274, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %gep274, i64 96
  store <4 x ptr> %wide.load, ptr %gep274, align 8, !tbaa !61
  store <4 x ptr> %wide.load205, ptr %i.dv, align 8, !tbaa !61
  store <4 x ptr> %wide.load206, ptr %i.dw, align 8, !tbaa !61
  store <4 x ptr> %wide.load207, ptr %i.dx, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec210 = and i64 %i.dn, -4                   ; 4 uses
  %i.dz = add nsw i64 %n.vec210, %i.dm            ; 2 uses
  %i.ea = add nsw i64 %n.vec210, %i.dl
  %invariant.gep275 = getelementptr [8 x i8], ptr %i.dk, i64 %i.dl
  %invariant.gep277 = getelementptr [8 x i8], ptr %i.dk, i64 %i.dm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 3 uses
  %gep276 = getelementptr [8 x i8], ptr %invariant.gep275, i64 %index211
  %wide.load212 = load <4 x ptr>, ptr %gep276, align 8, !tbaa !61
  %gep278 = getelementptr [8 x i8], ptr %invariant.gep277, i64 %index211
  store <4 x ptr> %wide.load212, ptr %gep278, align 8, !tbaa !61
  %index.next213 = add nuw i64 %index211, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next213, %n.vec210
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %i.dn, %n.vec210
  br i1 %cmp.n214, label %.loopexit.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv157.ph = phi i64 [ %i.dm, %iter.check ], [ %i.dm, %vector.memcheck ], [ %i.dq, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv155.ph = phi i64 [ %i.dl, %iter.check ], [ %i.dl, %vector.memcheck ], [ %i.dr, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ] ; 4 uses
  %i.ec = sub nsw i64 %wide.trip.count, %indvars.iv155.ph
  %xtraiter = and i64 %i.ec, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv157.prol = phi i64 [ %indvars.iv.next158.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv155.prol = phi i64 [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv155.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next156.prol = add nsw i64 %indvars.iv155.prol, 1 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %indvars.iv155.prol
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !61
  %indvars.iv.next158.prol = add nsw i64 %indvars.iv157.prol, 1 ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %indvars.iv157.prol
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !61
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !126

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next158.lcssa259.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next158.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv157.unr = phi i64 [ %indvars.iv157.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next158.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv155.unr = phi i64 [ %indvars.iv155.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph.prol ]
  %i.eg = sub nsw i64 %indvars.iv155.ph, %wide.trip.count
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %.loopexit.thread, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158.3, %vec.epilog.scalar.ph ], [ %indvars.iv157.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.3, %vec.epilog.scalar.ph ], [ %indvars.iv155.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %indvars.iv155
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !61
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %indvars.iv157
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !61
  %i.el = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv155
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !61
  %i.eo = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv157
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  store ptr %i.en, ptr %i.ep, align 8, !tbaa !61
  %i.eq = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv155
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !61
  %i.et = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv157
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !61
  %indvars.iv.next156.3 = add nsw i64 %indvars.iv155, 4 ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv155
  %i.ew = getelementptr i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !61
  %indvars.iv.next158.3 = add nsw i64 %indvars.iv157, 4 ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.dk, i64 %indvars.iv157
  %i.ez = getelementptr i8, ptr %i.ey, i64 24
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !61
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next156.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %vec.epilog.scalar.ph, !llvm.loop !128

.loopexit.thread:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next158.lcssa = phi i64 [ %i.dz, %vec.epilog.middle.block ], [ %i.dq, %middle.block ], [ %indvars.iv.next158.lcssa259.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next158.3, %vec.epilog.scalar.ph ]
  %i.fa = trunc nsw i64 %indvars.iv.next158.lcssa to i32
  br label %._crit_edge137

.loopexit:                                        ; preds = %bb.s
  %i.fb = icmp slt i32 %.2, %.pre
  br i1 %i.fb, label %.preheader112, label %._crit_edge137, !llvm.loop !129

bb.t:                                             ; preds = %.noexc, %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit
  %.in = load i32, ptr %i.l, align 4, !tbaa !3
  %i.fc = add nsw i32 %.in, 1                     ; 2 uses
  store i32 %i.fc, ptr %i.l, align 4, !tbaa !3
  switch i32 %i.fc, label %bb.aa [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.fe = load i32, ptr %i.k, align 8, !tbaa !3
  invoke void @_ZN3re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.fd, i32 noundef %i.fe, i32 poison, ptr noundef nonnull %i.m)
          to label %bb.ag unwind label %bb.g

bb.v:                                             ; preds = %bb.t
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.fg = load i32, ptr %i.k, align 8, !tbaa !3
  invoke void @_ZN3re221FactorAlternationImpl6Round2EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.ff, i32 noundef %i.fg, i32 poison, ptr noundef nonnull %i.m)
          to label %bb.ag unwind label %bb.g

bb.w:                                             ; preds = %bb.t
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.fi = load i32, ptr %i.k, align 8, !tbaa !3
  invoke void @_ZN3re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.fh, i32 noundef %i.fi, i32 noundef %2, ptr noundef nonnull %i.m)
          to label %bb.ag unwind label %bb.g

bb.x:                                             ; preds = %bb.t
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !112 ; 5 uses
  %i.fk = load ptr, ptr %3, align 8, !tbaa !130   ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = icmp eq i64 %i.fn, 48
  br i1 %i.fo, label %.lr.ph.i.i.i.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %6 = load i32, ptr %i.k, align 8, !tbaa !3
  %i.fp = getelementptr inbounds i8, ptr %i.fj, i64 -48 ; 2 uses
  store ptr %i.fp, ptr %i.f, align 8, !tbaa !112
  %i.fq = getelementptr inbounds i8, ptr %i.fj, i64 -32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr inbounds i8, ptr %i.fj, i64 -16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !131
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #32
  %.pre164 = load ptr, ptr %i.f, align 8, !tbaa !99
  br label %_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit

_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit: ; preds = %bb.y, %bb.z
  %i.fx = phi ptr [ %i.fp, %bb.y ], [ %.pre164, %bb.z ] ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -32
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 -8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !132 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !118
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  store i32 %6, ptr %i.ge, align 4, !tbaa !122
  %i.gf = add nsw i32 %i.ga, 1
  store i32 %i.gf, ptr %i.fz, align 8, !tbaa !132
  br label %.noexc.backedge

bb.aa:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 1040, i32 noundef 2) #36
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 15, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit94 unwind label %bb.ae

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit94: ; preds = %bb.ab
  %i.gg = load i32, ptr %i.l, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.gg, ptr %i.a, align 4, !tbaa !3
  %i.gh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit94, %bb.ab
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn83 = phi { ptr, i32 } [ %i.gj, %bb.ae ], [ %i.gi, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.am

bb.ag:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.ac
  %i.gk = load ptr, ptr %i.m, align 8, !tbaa !101 ; 2 uses
  %i.gl = load ptr, ptr %i.p, align 8, !tbaa !101 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gn = load i32, ptr %i.l, align 4, !tbaa !3
  %i.go = icmp eq i32 %i.gn, 3
  br i1 %i.go, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = ptrtoint ptr %i.gk to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 24
  %i.gt = trunc i64 %i.gs to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %storemerge = phi i32 [ %i.gt, %bb.ai ], [ 0, %bb.ah ]
  store i32 %storemerge, ptr %i.n, align 8, !tbaa !3
  br label %.noexc.backedge

.lr.ph.i.i.i.preheader:                           ; preds = %bb.x
  %7 = load i32, ptr %i.k, align 4, !tbaa !3
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hb, %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i.i ], [ %i.fk, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !131
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #32
  br label %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i.i:       ; preds = %bb.ak, %.lr.ph.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, %i.fj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !133

_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN3re25FrameEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !130  ; 3 uses
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3re25FrameESaIS1_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit.i
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %.pr.i to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.hf) #32
  br label %_ZNSt6vectorIN3re25FrameESaIS1_EED2Ev.exit

_ZNSt6vectorIN3re25FrameESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN3re25FrameES1_EvT_S3_RSaIT0_E.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i32 %7

bb.am:                                            ; preds = %bb.k, %bb.r, %bb.g, %bb.af, %bb.b
  %.pn83.pn.pn = phi { ptr, i32 } [ %i.s, %bb.b ], [ %.pn83, %bb.af ], [ %i.am, %bb.g ], [ %.pn, %bb.r ], [ %i.cu, %bb.k ]
  call void @_ZNSt6vectorIN3re25FrameESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn83.pn.pn
}

declare noundef ptr @_ZN3re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN3re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %0, i32 noundef %1, i32 %2, ptr noundef captures(none) %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not82 = icmp slt i32 %1, 0
  br i1 %.not82, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.b

._crit_edge92:                                    ; preds = %bb.n, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph91, %bb.n
  %indvars.iv101 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next102, %bb.n ] ; 9 uses
  %.04588 = phi i32 [ 0, %.lr.ph91 ], [ %.2, %bb.n ] ; 6 uses
  %.04686 = phi i32 [ 0, %.lr.ph91 ], [ %.4, %bb.n ] ; 4 uses
  %.04985 = phi ptr [ null, %.lr.ph91 ], [ %.251, %bb.n ] ; 4 uses
  %.05283 = phi i32 [ 0, %.lr.ph91 ], [ %.254, %bb.n ] ; 6 uses
  %i.e = icmp samesign ult i64 %indvars.iv101, %i.c ; 2 uses
  br i1 %i.e, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv101
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !25    ; 2 uses
  %i.i = icmp eq i8 %i.h, 5
  br i1 %i.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01417.i = phi ptr [ %i.q, %bb.d ], [ %i.g, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01417.i, i64 6
  %i.k = load i16, ptr %i.j, align 2, !tbaa !60   ; 2 uses
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01417.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !48
  br label %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = icmp eq i16 %i.k, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.0.i.i = select i1 %i.n, ptr %i.o, ptr %i.p
  %i.q = load ptr, ptr %.0.i.i, align 8, !tbaa !61 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !25    ; 2 uses
  %i.s = icmp eq i8 %i.r, 5
  br i1 %i.s, label %.lr.ph.i, label %.critedge.i, !llvm.loop !94

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.014.lcssa.i = phi ptr [ %i.g, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.lcssa.i = phi i8 [ %i.h, %bb.c ], [ %i.r, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !48   ; 3 uses
  switch i8 %.lcssa.i, label %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit [
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 24
  br label %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

bb.f:                                             ; preds = %.critedge.i
  %i.w = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %.014.lcssa.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = freeze i32 %i.x
  br label %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit

_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit: ; preds = %.thread.i, %.critedge.i, %bb.e, %bb.f
  %.272.in.in = phi i16 [ %i.u, %bb.f ], [ %i.u, %bb.e ], [ %i.m, %.thread.i ], [ %i.u, %.critedge.i ]
  %.1 = phi i32 [ %i.aa, %bb.f ], [ 1, %bb.e ], [ 0, %.thread.i ], [ 0, %.critedge.i ] ; 4 uses
  %.0.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %bb.e ], [ null, %.thread.i ], [ null, %.critedge.i ] ; 4 uses
  %.272.in = and i16 %.272.in.in, 33
  %.272 = zext nneg i16 %.272.in to i32           ; 2 uses
  %i.ab = icmp eq i32 %.04588, %.272
  br i1 %i.ab, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %.04686, i32 %.1) ; 3 uses
  %or.cond76 = icmp sgt i32 %invariant.smin, 0
  br i1 %or.cond76, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = zext nneg i32 %invariant.smin to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.04985, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0.i, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.split.loop.exit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ac
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !134

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.split.loop.exit
  %.041.lcssa = phi i32 [ %i.ai, %.critedge.split.loop.exit ], [ %invariant.smin, %bb.g ] ; 2 uses
  %.not56 = icmp eq i32 %.041.lcssa, 0
  br i1 %.not56, label %.critedge.thread, label %bb.n

.critedge.thread:                                 ; preds = %.preheader, %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit, %.critedge, %bb.b
  %.070 = phi i32 [ %.04588, %.critedge ], [ %.272, %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ 0, %bb.b ], [ %.04588, %.preheader ]
  %.069 = phi i32 [ %.1, %.critedge ], [ %.1, %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ 0, %bb.b ], [ %.1, %.preheader ]
  %.042 = phi ptr [ %.0.i, %.critedge ], [ %.0.i, %_ZN3re26Regexp13LeadingStringEPS0_PiPNS0_10ParseFlagsE.exit ], [ null, %bb.b ], [ %.0.i, %.preheader ]
  %i.aj = zext nneg i32 %.05283 to i64
  %i.ak = icmp eq i64 %indvars.iv101, %i.aj
  %i.al = add nuw nsw i32 %.05283, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = icmp eq i64 %indvars.iv101, %i.am
  %or.cond59 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond59, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEERS1_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.thread
  %i.ao = tail call noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef %.04985, i32 noundef %.04686, i32 noundef %.04588) ; 2 uses
  %i.ap = zext nneg i32 %.05283 to i64            ; 3 uses
  %i.aq = icmp samesign ugt i64 %indvars.iv101, %i.ap
  br i1 %i.aq, label %.lr.ph81, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph81, %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv101 to i32
  %i.at = sub nsw i32 %i.as, %.05283              ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !119 ; 9 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !131
  %.not.i60 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !121
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ar, ptr %i.aw, align 8, !tbaa !113
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %i.at, ptr %i.ax, align 8, !tbaa !123
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 -1, ptr %i.ay, align 4, !tbaa !122
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.az, ptr %i.a, align 8, !tbaa !119
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE12emplace_backIJRPNS0_6RegexpEPS6_iEEERS1_DpOT_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %3, align 8, !tbaa !118   ; 5 uses
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorIN3re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #38
  unreachable

_ZNKSt6vectorIN3re26SpliceESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bf = sdiv exact i64 %i.bd, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 384307168202282325)
  %i.bj = select i1 %i.bh, i64 384307168202282325, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = mul nuw nsw i64 %i.bj, 24
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #35 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 4 uses
  store ptr %i.ao, ptr %i.bm, align 8, !tbaa !121
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.ar, ptr %i.bn, align 8, !tbaa !113
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 %i.at, ptr %i.bo, align 8, !tbaa !123
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 -1, ptr %i.bp, align 4, !tbaa !122
end_hunk_0
