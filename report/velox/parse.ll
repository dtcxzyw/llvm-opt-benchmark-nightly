inline.NumInlined: 1142
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re26Regexp19RemoveLeadingStringEPS0_i:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 871, i32 noundef 2) #35
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
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  store ptr null, ptr %i.am, align 8, !tbaa !26
  store i8 2, ptr %i.ai, align 8, !tbaa !25
  br label %bb.t

bb.q:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
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
  %.sroa.099.0134 = phi ptr [ %i.df, %.loopexit ], [ %i.o, %.preheader113 ] ; 7 uses
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
  %6 = shl nsw i64 %i.be, 3
  %7 = add nsw i64 %6, -1
  %diff.check218 = icmp ult i64 %7, 127
  br i1 %diff.check218, label %.lr.ph.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %vector.memcheck217
  %min.iters.check221 = icmp ult i64 %i.bb, 120
  br i1 %min.iters.check221, label %vec.epilog.ph241, label %vector.ph222

vector.ph222:                                     ; preds = %vector.main.loop.iter.check220
  %n.mod.vf223 = and i64 %i.bd, 12
  %n.vec224 = and i64 %i.bd, 4611686018427387888  ; 6 uses
  %i.bf = add nsw i64 %n.vec224, %i.av            ; 2 uses
  %i.bg = add nsw i64 %n.vec224, %i.aq            ; 2 uses
  %i.bh = shl i64 %n.vec224, 3
  %i.bi = getelementptr i8, ptr %i.ar, i64 %i.bh
  %invariant.gep = getelementptr [8 x i8], ptr %i.an, i64 %i.av
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next231, %vector.body225 ] ; 3 uses
  %i.bj = shl i64 %index226, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bj ; 4 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 32
  %i.bl = getelementptr i8, ptr %next.gep, i64 64
  %i.bm = getelementptr i8, ptr %next.gep, i64 96
  %wide.load227 = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !61
  %wide.load228 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !61
  %wide.load229 = load <4 x ptr>, ptr %i.bl, align 8, !tbaa !61
  %wide.load230 = load <4 x ptr>, ptr %i.bm, align 8, !tbaa !61
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index226 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x ptr> %wide.load227, ptr %gep, align 8, !tbaa !61
  store <4 x ptr> %wide.load228, ptr %i.bn, align 8, !tbaa !61
  store <4 x ptr> %wide.load229, ptr %i.bo, align 8, !tbaa !61
  store <4 x ptr> %wide.load230, ptr %i.bp, align 8, !tbaa !61
  %index.next231 = add nuw i64 %index226, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next231, %n.vec224
  br i1 %i.bq, label %middle.block232, label %vector.body225, !llvm.loop !115

middle.block232:                                  ; preds = %vector.body225
  %cmp.n233 = icmp eq i64 %i.bd, %n.vec224
  br i1 %cmp.n233, label %._crit_edge.loopexit, label %vec.epilog.iter.check239

vec.epilog.iter.check239:                         ; preds = %middle.block232
  %min.epilog.iters.check240 = icmp eq i64 %n.mod.vf223, 0
  br i1 %min.epilog.iters.check240, label %.lr.ph.preheader, label %vec.epilog.ph241, !prof !116

vec.epilog.ph241:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check239
  %vec.epilog.resume.val234 = phi i64 [ %n.vec224, %vec.epilog.iter.check239 ], [ 0, %vector.main.loop.iter.check220 ]
  %n.vec243 = and i64 %i.bd, 4611686018427387900  ; 5 uses
  %i.br = add nsw i64 %n.vec243, %i.av            ; 2 uses
  %i.bs = add nsw i64 %n.vec243, %i.aq            ; 2 uses
  %i.bt = shl i64 %n.vec243, 3
  %i.bu = getelementptr i8, ptr %i.ar, i64 %i.bt
  %invariant.gep281 = getelementptr [8 x i8], ptr %i.an, i64 %i.av
  br label %vec.epilog.vector.body244

vec.epilog.vector.body244:                        ; preds = %vec.epilog.vector.body244, %vec.epilog.ph241
  %index245 = phi i64 [ %vec.epilog.resume.val234, %vec.epilog.ph241 ], [ %index.next248, %vec.epilog.vector.body244 ] ; 3 uses
  %i.bv = shl i64 %index245, 3
  %next.gep246 = getelementptr i8, ptr %i.ar, i64 %i.bv
  %wide.load247 = load <4 x ptr>, ptr %next.gep246, align 8, !tbaa !61
  %gep282 = getelementptr [8 x i8], ptr %invariant.gep281, i64 %index245
  store <4 x ptr> %wide.load247, ptr %gep282, align 8, !tbaa !61
  %index.next248 = add nuw i64 %index245, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next248, %n.vec243
  br i1 %i.bw, label %vec.epilog.middle.block249, label %vec.epilog.vector.body244, !llvm.loop !117

vec.epilog.middle.block249:                       ; preds = %vec.epilog.vector.body244
  %cmp.n250 = icmp eq i64 %i.bd, %n.vec243
  br i1 %cmp.n250, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck217, %iter.check237, %vec.epilog.iter.check239, %vec.epilog.middle.block249
  %indvars.iv149.ph = phi i64 [ %i.av, %iter.check237 ], [ %i.av, %vector.memcheck217 ], [ %i.bf, %vec.epilog.iter.check239 ], [ %i.br, %vec.epilog.middle.block249 ]
  %indvars.iv.ph = phi i64 [ %i.aq, %iter.check237 ], [ %i.aq, %vector.memcheck217 ], [ %i.bg, %vec.epilog.iter.check239 ], [ %i.bs, %vec.epilog.middle.block249 ]
  %.ph = phi ptr [ %i.ar, %iter.check237 ], [ %i.ar, %vector.memcheck217 ], [ %i.bi, %vec.epilog.iter.check239 ], [ %i.bu, %vec.epilog.middle.block249 ]
  br label %.lr.ph

._crit_edge137:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469181 = phi i32 [ %i.ey, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre162 = load ptr, ptr %i.m, align 8, !tbaa !118 ; 2 uses
  %.pre163 = load ptr, ptr %i.p, align 8, !tbaa !119
  %i.bx = icmp eq ptr %.pre163, %.pre162
  br i1 %i.bx, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader113, %._crit_edge137
  %.065.lcssa177 = phi i32 [ %.469181, %._crit_edge137 ], [ 0, %.preheader113 ]
  %i.by = phi ptr [ %.pre162, %._crit_edge137 ], [ %i.o, %.preheader113 ]
  store ptr %i.by, ptr %i.p, align 8, !tbaa !119
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit:  ; preds = %._crit_edge137, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa178 = phi i32 [ %.469181, %._crit_edge137 ], [ %.065.lcssa177, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa178, ptr %i.k, align 8, !tbaa !3
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.lr.ph ], [ %indvars.iv149.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ]
  %i.bz = phi ptr [ %i.cc, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !61
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv149
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !61
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.next ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.ap
  br i1 %i.cd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !120

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block249, %middle.block232
  %indvars.iv.next.lcssa = phi i64 [ %i.bs, %vec.epilog.middle.block249 ], [ %i.bg, %middle.block232 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next150.lcssa = phi i64 [ %i.br, %vec.epilog.middle.block249 ], [ %i.bf, %middle.block232 ], [ %indvars.iv.next150, %.lr.ph ]
  %i.ce = trunc nsw i64 %indvars.iv.next150.lcssa to i32
  %i.cf = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader112
  %.166.lcssa = phi i32 [ %.065135, %.preheader112 ], [ %i.ce, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063136, %.preheader112 ], [ %i.cf, %._crit_edge.loopexit ] ; 3 uses
  %i.cg = load i32, ptr %i.l, align 4, !tbaa !3
  switch i32 %i.cg, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.ch = load ptr, ptr %.sroa.099.0134, align 8, !tbaa !121
  store ptr %i.ch, ptr %i.e, align 16, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !122
  %i.ck = invoke noundef ptr @_ZN3re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.ap, i32 noundef %i.cj, i32 noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.ck, ptr %i.h, align 8, !tbaa !61
  %i.cl = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.cn = add nsw i32 %.166.lcssa, 1
  %i.co = sext i32 %.166.lcssa to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !61
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !123
  %i.cs = add nsw i32 %i.cr, %.164.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.s

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.am

bb.l:                                             ; preds = %._crit_edge
  %i.cu = load ptr, ptr %.sroa.099.0134, align 8, !tbaa !121
  %i.cv = add nsw i32 %.166.lcssa, 1
  %i.cw = sext i32 %.166.lcssa to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !123
  %i.da = add nsw i32 %i.cz, %.164.lcssa
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 1001, i32 noundef 2) #35
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 15, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.q

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.n
  %i.db = load i32, ptr %i.l, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.db, ptr %i.b, align 4, !tbaa !3
  %i.dc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit, %bb.n
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.de, %bb.q ], [ %i.dd, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.am

bb.s:                                             ; preds = %bb.o, %bb.l, %bb.j
  %.267 = phi i32 [ %.166.lcssa, %bb.o ], [ %i.cn, %bb.j ], [ %i.cv, %bb.l ] ; 3 uses
  %.2 = phi i32 [ %.164.lcssa, %bb.o ], [ %i.cs, %bb.j ], [ %i.da, %bb.l ] ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 24 ; 2 uses
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.dh = icmp eq ptr %i.df, %i.dg
  %.pre = load i32, ptr %i.k, align 8, !tbaa !3   ; 3 uses
  %i.di = icmp slt i32 %.2, %.pre
  %or.cond = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.s
  %i.dj = load ptr, ptr %i.j, align 8, !tbaa !97  ; 14 uses
  %i.dk = sext i32 %.2 to i64                     ; 8 uses
  %i.dl = sext i32 %.267 to i64                   ; 7 uses
  %wide.trip.count = sext i32 %.pre to i64        ; 4 uses
  %i.dm = sub nsw i64 %wide.trip.count, %i.dk     ; 7 uses
  %min.iters.check = icmp ult i64 %i.dm, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dn = sub nsw i64 %i.dl, %i.dk
  %8 = shl nsw i64 %i.dn, 3
  %9 = add nsw i64 %8, -1
  %diff.check = icmp ult i64 %9, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check204 = icmp ult i64 %i.dm, 16
  br i1 %min.iters.check204, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dm, 12
  %n.vec = and i64 %i.dm, -16                     ; 5 uses
  %i.do = add nsw i64 %n.vec, %i.dl               ; 2 uses
  %i.dp = add nsw i64 %n.vec, %i.dk
  %invariant.gep283 = getelementptr [8 x i8], ptr %i.dj, i64 %i.dk
  %invariant.gep285 = getelementptr [8 x i8], ptr %i.dj, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep284 = getelementptr [8 x i8], ptr %invariant.gep283, i64 %index ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %gep284, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %gep284, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %gep284, i64 96
  %wide.load = load <4 x ptr>, ptr %gep284, align 8, !tbaa !61
  %wide.load205 = load <4 x ptr>, ptr %i.dq, align 8, !tbaa !61
  %wide.load206 = load <4 x ptr>, ptr %i.dr, align 8, !tbaa !61
  %wide.load207 = load <4 x ptr>, ptr %i.ds, align 8, !tbaa !61
  %gep286 = getelementptr [8 x i8], ptr %invariant.gep285, i64 %index ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %gep286, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %gep286, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %gep286, i64 96
  store <4 x ptr> %wide.load, ptr %gep286, align 8, !tbaa !61
  store <4 x ptr> %wide.load205, ptr %i.dt, align 8, !tbaa !61
  store <4 x ptr> %wide.load206, ptr %i.du, align 8, !tbaa !61
  store <4 x ptr> %wide.load207, ptr %i.dv, align 8, !tbaa !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec210 = and i64 %i.dm, -4                   ; 4 uses
  %i.dx = add nsw i64 %n.vec210, %i.dl            ; 2 uses
  %i.dy = add nsw i64 %n.vec210, %i.dk
  %invariant.gep287 = getelementptr [8 x i8], ptr %i.dj, i64 %i.dk
  %invariant.gep289 = getelementptr [8 x i8], ptr %i.dj, i64 %i.dl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 3 uses
  %gep288 = getelementptr [8 x i8], ptr %invariant.gep287, i64 %index211
  %wide.load212 = load <4 x ptr>, ptr %gep288, align 8, !tbaa !61
  %gep290 = getelementptr [8 x i8], ptr %invariant.gep289, i64 %index211
  store <4 x ptr> %wide.load212, ptr %gep290, align 8, !tbaa !61
  %index.next213 = add nuw i64 %index211, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next213, %n.vec210
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %i.dm, %n.vec210
  br i1 %cmp.n214, label %.loopexit.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv157.ph = phi i64 [ %i.dl, %iter.check ], [ %i.dl, %vector.memcheck ], [ %i.do, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ] ; 2 uses
  %indvars.iv155.ph = phi i64 [ %i.dk, %iter.check ], [ %i.dk, %vector.memcheck ], [ %i.dp, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ] ; 4 uses
  %i.ea = sub nsw i64 %wide.trip.count, %indvars.iv155.ph
  %xtraiter = and i64 %i.ea, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv157.prol = phi i64 [ %indvars.iv.next158.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv155.prol = phi i64 [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv155.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next156.prol = add nsw i64 %indvars.iv155.prol, 1 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %indvars.iv155.prol
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !61
  %indvars.iv.next158.prol = add nsw i64 %indvars.iv157.prol, 1 ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %indvars.iv157.prol
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !61
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !126

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.next158.lcssa259.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next158.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv157.unr = phi i64 [ %indvars.iv157.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next158.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv155.unr = phi i64 [ %indvars.iv155.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next156.prol, %vec.epilog.scalar.ph.prol ]
  %i.ee = sub nsw i64 %indvars.iv155.ph, %wide.trip.count
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.loopexit.thread, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158.3, %vec.epilog.scalar.ph ], [ %indvars.iv157.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.3, %vec.epilog.scalar.ph ], [ %indvars.iv155.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %indvars.iv155
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %indvars.iv157
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !61
  %i.ej = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv155
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !61
  %i.em = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv157
  %i.en = getelementptr i8, ptr %i.em, i64 8
  store ptr %i.el, ptr %i.en, align 8, !tbaa !61
  %i.eo = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv155
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !61
  %i.er = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv157
  %i.es = getelementptr i8, ptr %i.er, i64 16
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !61
  %indvars.iv.next156.3 = add nsw i64 %indvars.iv155, 4 ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv155
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !61
  %indvars.iv.next158.3 = add nsw i64 %indvars.iv157, 4 ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.dj, i64 %indvars.iv157
  %i.ex = getelementptr i8, ptr %i.ew, i64 24
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !61
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next156.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit.thread, label %vec.epilog.scalar.ph, !llvm.loop !128

.loopexit.thread:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next158.lcssa = phi i64 [ %i.dx, %vec.epilog.middle.block ], [ %i.do, %middle.block ], [ %indvars.iv.next158.lcssa259.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %indvars.iv.next158.3, %vec.epilog.scalar.ph ]
  %i.ey = trunc nsw i64 %indvars.iv.next158.lcssa to i32
  br label %._crit_edge137

.loopexit:                                        ; preds = %bb.s
  %i.ez = icmp slt i32 %.2, %.pre
  br i1 %i.ez, label %.preheader112, label %._crit_edge137, !llvm.loop !129

bb.t:                                             ; preds = %.noexc, %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit
  %.in = load i32, ptr %i.l, align 4, !tbaa !3
  %i.fa = add nsw i32 %.in, 1                     ; 2 uses
  store i32 %i.fa, ptr %i.l, align 4, !tbaa !3
  switch i32 %i.fa, label %bb.aa [
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.fc = load i32, ptr %i.k, align 8, !tbaa !3
  invoke void @_ZN3re221FactorAlternationImpl6Round1EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.fb, i32 noundef %i.fc, i32 poison, ptr noundef nonnull %i.m)
          to label %bb.ag unwind label %bb.g

bb.v:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.fe = load i32, ptr %i.k, align 8, !tbaa !3
  invoke void @_ZN3re221FactorAlternationImpl6Round2EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.fd, i32 noundef %i.fe, i32 poison, ptr noundef nonnull %i.m)
          to label %bb.ag unwind label %bb.g

bb.w:                                             ; preds = %bb.t
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.fg = load i32, ptr %i.k, align 8, !tbaa !3
  invoke void @_ZN3re221FactorAlternationImpl6Round3EPPNS_6RegexpEiNS1_10ParseFlagsEPSt6vectorINS_6SpliceESaIS6_EE(ptr noundef %i.ff, i32 noundef %i.fg, i32 noundef %2, ptr noundef nonnull %i.m)
          to label %bb.ag unwind label %bb.g

bb.x:                                             ; preds = %bb.t
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !112 ; 5 uses
  %i.fi = load ptr, ptr %3, align 8, !tbaa !130   ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = icmp eq i64 %i.fl, 48
  br i1 %i.fm, label %.lr.ph.i.i.i.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = load i32, ptr %i.k, align 8, !tbaa !3
  %i.fo = getelementptr inbounds i8, ptr %i.fh, i64 -48 ; 2 uses
  store ptr %i.fo, ptr %i.f, align 8, !tbaa !112
  %i.fp = getelementptr inbounds i8, ptr %i.fh, i64 -32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fr = getelementptr inbounds i8, ptr %i.fh, i64 -16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !131
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #31
  %.pre164 = load ptr, ptr %i.f, align 8, !tbaa !99
  br label %_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit

_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit: ; preds = %bb.y, %bb.z
  %i.fw = phi ptr [ %i.fo, %bb.y ], [ %.pre164, %bb.z ] ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -32
  %i.fy = getelementptr inbounds i8, ptr %i.fw, i64 -8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !132 ; 2 uses
  %i.ga = sext i32 %i.fz to i64
end_hunk_0
