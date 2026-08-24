Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/parse?download=true
inline.NumInlined: 1142
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re26Regexp19RemoveLeadingStringEPS0_i:bb.a
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !62
  %i.al = icmp ult i16 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8
  %.0.i58 = select i1 %i.al, ptr %i.am, ptr %i.an ; 5 uses
  %i.ao = load ptr, ptr %.0.i58, align 8, !tbaa !63 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !27
  %i.aq = icmp eq i8 %i.ap, 2
  br i1 %i.aq, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.lr.ph
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
  store ptr null, ptr %.0.i58, align 8, !tbaa !63
  %i.ar = load i16, ptr %i.aj, align 2, !tbaa !62 ; 2 uses
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
  %i.as = load i16, ptr %i.aj, align 2, !tbaa !62
  %i.at = zext i16 %i.as to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.at, ptr %i.a, align 4, !tbaa !8
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi11EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  store ptr null, ptr %i.am, align 8, !tbaa !28
  store i8 2, ptr %i.ai, align 8, !tbaa !27
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
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !63
  call void @_ZN3re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef %i.ax)
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ax)
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.ay = add i16 %i.ar, -1                       ; 2 uses
  store i16 %i.ay, ptr %i.aj, align 2, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8
  %i.ba = zext i16 %i.ay to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i58, ptr nonnull align 8 %i.az, i64 %i.bb, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.r, %bb.s, %.lr.ph
  %.not57 = icmp eq i64 %i.ag, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph, !llvm.loop !98

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
  store ptr %0, ptr %i.c, align 8, !tbaa !99
  store i32 %1, ptr %i.d, align 4, !tbaa !8
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
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !101  ; 12 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -48 ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -40 ; 8 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -36 ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !103  ; 5 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -24 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103  ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.t, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.c:                                             ; preds = %.noexc
  %i.t = load i32, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = ptrtoint ptr %i.o to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp slt i32 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %.preheader113

.preheader113:                                    ; preds = %bb.c
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader112, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = sext i32 %i.t to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !105
  %.not.i87 = icmp eq ptr %i.i, %i.ag
  br i1 %.not.i87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !8
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !113
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ak, i8 0, i64 28, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %i.al, ptr %i.f, align 8, !tbaa !114
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
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !99  ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !115 ; 3 uses
  %i.aq = sext i32 %.063136 to i64                ; 7 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.aq ; 7 uses
  %i.as = icmp ult ptr %i.ar, %i.ap
  br i1 %i.as, label %iter.check235, label %._crit_edge

iter.check235:                                    ; preds = %.preheader112
  %i.at = ptrtoaddr ptr %i.ap to i64
  %i.au = ptrtoaddr ptr %i.an to i64
  %i.av = sext i32 %.065135 to i64                ; 7 uses
  %6 = xor i64 %i.au, -1
  %i.aw = add i64 %6, %i.at
  %7 = shl nsw i64 %i.aq, 3
  %i.ax = sub i64 %i.aw, %7                       ; 3 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 5 uses
  %min.iters.check218 = icmp ult i64 %i.ax, 24
  br i1 %min.iters.check218, label %.lr.ph.preheader, label %vector.memcheck216

vector.memcheck216:                               ; preds = %iter.check235
  %i.ba = sub nsw i64 %i.av, %i.aq
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = add nsw i64 %i.bb, -1
  %diff.check217 = icmp ult i64 %i.bc, 127
  br i1 %diff.check217, label %.lr.ph.preheader, label %vector.main.loop.iter.check219

vector.main.loop.iter.check219:                   ; preds = %vector.memcheck216
  %min.iters.check220 = icmp ult i64 %i.ax, 120
  br i1 %min.iters.check220, label %vec.epilog.ph239, label %vector.ph221

vector.ph221:                                     ; preds = %vector.main.loop.iter.check219
  %i.bd = and i64 %i.az, 12
  %n.vec222 = and i64 %i.az, 4611686018427387888  ; 6 uses
  %i.be = add nsw i64 %n.vec222, %i.av            ; 2 uses
  %i.bf = add nsw i64 %n.vec222, %i.aq            ; 2 uses
  %i.bg = shl i64 %n.vec222, 3
  %i.bh = getelementptr i8, ptr %i.ar, i64 %i.bg
  %invariant.gep = getelementptr [8 x i8], ptr %i.an, i64 %i.av
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph221
  %index224 = phi i64 [ 0, %vector.ph221 ], [ %index.next229, %vector.body223 ] ; 3 uses
  %i.bi = shl i64 %index224, 3
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bi ; 4 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 32
  %i.bk = getelementptr i8, ptr %next.gep, i64 64
  %i.bl = getelementptr i8, ptr %next.gep, i64 96
  %wide.load225 = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !63
  %wide.load226 = load <4 x ptr>, ptr %i.bj, align 8, !tbaa !63
  %wide.load227 = load <4 x ptr>, ptr %i.bk, align 8, !tbaa !63
  %wide.load228 = load <4 x ptr>, ptr %i.bl, align 8, !tbaa !63
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index224 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <4 x ptr> %wide.load225, ptr %gep, align 8, !tbaa !63
  store <4 x ptr> %wide.load226, ptr %i.bm, align 8, !tbaa !63
  store <4 x ptr> %wide.load227, ptr %i.bn, align 8, !tbaa !63
  store <4 x ptr> %wide.load228, ptr %i.bo, align 8, !tbaa !63
  %index.next229 = add nuw i64 %index224, 16      ; 2 uses
  %i.bp = icmp eq i64 %index.next229, %n.vec222
  br i1 %i.bp, label %middle.block230, label %vector.body223, !llvm.loop !117

middle.block230:                                  ; preds = %vector.body223
  %cmp.n231 = icmp eq i64 %i.az, %n.vec222
  br i1 %cmp.n231, label %._crit_edge.loopexit, label %vec.epilog.iter.check237

vec.epilog.iter.check237:                         ; preds = %middle.block230
  %min.epilog.iters.check238 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check238, label %.lr.ph.preheader, label %vec.epilog.ph239, !prof !118

vec.epilog.ph239:                                 ; preds = %vector.main.loop.iter.check219, %vec.epilog.iter.check237
  %vec.epilog.resume.val232 = phi i64 [ %n.vec222, %vec.epilog.iter.check237 ], [ 0, %vector.main.loop.iter.check219 ]
  %n.vec240 = and i64 %i.az, 4611686018427387900  ; 5 uses
  %i.bq = add nsw i64 %n.vec240, %i.av            ; 2 uses
  %i.br = add nsw i64 %n.vec240, %i.aq            ; 2 uses
  %i.bs = shl i64 %n.vec240, 3
  %i.bt = getelementptr i8, ptr %i.ar, i64 %i.bs
  %invariant.gep278 = getelementptr [8 x i8], ptr %i.an, i64 %i.av
  br label %vec.epilog.vector.body241

vec.epilog.vector.body241:                        ; preds = %vec.epilog.vector.body241, %vec.epilog.ph239
  %index242 = phi i64 [ %vec.epilog.resume.val232, %vec.epilog.ph239 ], [ %index.next245, %vec.epilog.vector.body241 ] ; 3 uses
  %i.bu = shl i64 %index242, 3
  %next.gep243 = getelementptr i8, ptr %i.ar, i64 %i.bu
  %wide.load244 = load <4 x ptr>, ptr %next.gep243, align 8, !tbaa !63
  %gep279 = getelementptr [8 x i8], ptr %invariant.gep278, i64 %index242
  store <4 x ptr> %wide.load244, ptr %gep279, align 8, !tbaa !63
  %index.next245 = add nuw i64 %index242, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next245, %n.vec240
  br i1 %i.bv, label %vec.epilog.middle.block246, label %vec.epilog.vector.body241, !llvm.loop !119

vec.epilog.middle.block246:                       ; preds = %vec.epilog.vector.body241
  %cmp.n247 = icmp eq i64 %i.az, %n.vec240
  br i1 %cmp.n247, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck216, %iter.check235, %vec.epilog.iter.check237, %vec.epilog.middle.block246
  %indvars.iv149.ph = phi i64 [ %i.av, %iter.check235 ], [ %i.av, %vector.memcheck216 ], [ %i.be, %vec.epilog.iter.check237 ], [ %i.bq, %vec.epilog.middle.block246 ]
  %indvars.iv.ph = phi i64 [ %i.aq, %iter.check235 ], [ %i.aq, %vector.memcheck216 ], [ %i.bf, %vec.epilog.iter.check237 ], [ %i.br, %vec.epilog.middle.block246 ]
  %.ph = phi ptr [ %i.ar, %iter.check235 ], [ %i.ar, %vector.memcheck216 ], [ %i.bh, %vec.epilog.iter.check237 ], [ %i.bt, %vec.epilog.middle.block246 ]
  br label %.lr.ph

._crit_edge137:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469181 = phi i32 [ %i.fb, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre162 = load ptr, ptr %i.m, align 8, !tbaa !120 ; 2 uses
  %.pre163 = load ptr, ptr %i.p, align 8, !tbaa !121
  %i.bw = icmp eq ptr %.pre163, %.pre162
  br i1 %i.bw, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader113, %._crit_edge137
  %.065.lcssa177 = phi i32 [ %.469181, %._crit_edge137 ], [ 0, %.preheader113 ]
  %i.bx = phi ptr [ %.pre162, %._crit_edge137 ], [ %i.o, %.preheader113 ]
  store ptr %i.bx, ptr %i.p, align 8, !tbaa !121
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit:  ; preds = %._crit_edge137, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa178 = phi i32 [ %.469181, %._crit_edge137 ], [ %.065.lcssa177, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa178, ptr %i.k, align 8, !tbaa !8
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.lr.ph ], [ %indvars.iv149.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ]
  %i.by = phi ptr [ %i.cb, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !63
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv149
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !63
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.next ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.ap
  br i1 %i.cc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !122

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block246, %middle.block230
  %indvars.iv.next.lcssa = phi i64 [ %i.br, %vec.epilog.middle.block246 ], [ %i.bf, %middle.block230 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next150.lcssa = phi i64 [ %i.bq, %vec.epilog.middle.block246 ], [ %i.be, %middle.block230 ], [ %indvars.iv.next150, %.lr.ph ]
  %i.cd = trunc nsw i64 %indvars.iv.next150.lcssa to i32
  %i.ce = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader112
  %.166.lcssa = phi i32 [ %.065135, %.preheader112 ], [ %i.cd, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063136, %.preheader112 ], [ %i.ce, %._crit_edge.loopexit ] ; 3 uses
  %i.cf = load i32, ptr %i.l, align 4, !tbaa !8
  switch i32 %i.cf, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.cg = load ptr, ptr %.sroa.099.0134, align 8, !tbaa !123
  store ptr %i.cg, ptr %i.e, align 16, !tbaa !63
  %i.ch = load ptr, ptr %i.ao, align 8, !tbaa !115
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !124
  %i.ck = invoke noundef ptr @_ZN3re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.ch, i32 noundef %i.cj, i32 noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.ck, ptr %i.h, align 8, !tbaa !63
  %i.cl = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.cn = add nsw i32 %.166.lcssa, 1
  %i.co = sext i32 %.166.lcssa to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !125
  %i.cs = add nsw i32 %i.cr, %.164.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.s

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.am

bb.l:                                             ; preds = %._crit_edge
  %i.cu = load ptr, ptr %.sroa.099.0134, align 8, !tbaa !123
  %i.cv = add nsw i32 %.166.lcssa, 1
  %i.cw = sext i32 %.166.lcssa to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.099.0134, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !125
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
  %i.db = load i32, ptr %i.l, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.db, ptr %i.b, align 4, !tbaa !8
  %i.dc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
end_hunk_0
