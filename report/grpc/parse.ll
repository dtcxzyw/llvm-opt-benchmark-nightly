Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/parse?download=true
inline.NumInlined: 1024
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3re26Regexp19RemoveLeadingStringEPS0_i:bb.a
  %i.bj = icmp eq ptr %i.bi, %i.al
  br i1 %i.bj, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.s
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !29
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #29
  br label %_ZN10LogMessageD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #30
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !81
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #31
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.an) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  store ptr null, ptr %i.au, align 8, !tbaa !29
  store i8 2, ptr %i.aq, align 8, !tbaa !28
  br label %bb.x

bb.u:                                             ; preds = %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  resume { ptr, i32 } %i.bo

bb.v:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !64 ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !64
  call void @_ZN3re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef %i.bq)
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bq)
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.br = add i16 %i.az, -1                       ; 2 uses
  store i16 %i.br, ptr %i.ar, align 2, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8
  %i.bt = zext i16 %i.br to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i58, ptr nonnull align 8 %i.bs, i64 %i.bu, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %bb.v, %bb.w, %bb.n
  %.not57 = icmp eq i64 %i.ao, 0
  br i1 %.not57, label %._crit_edge, label %bb.n, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.x, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

declare void @_ZN3re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %5 = alloca %class.LogMessage, align 8          ; 23 uses
  %6 = alloca %class.LogMessage, align 8          ; 13 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !116
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN3re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.preheader unwind label %bb.b

.noexc.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 344
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 345
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 120
  br label %.noexc

.noexc:                                           ; preds = %.noexc.backedge, %.noexc.preheader
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !118 ; 12 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -48 ; 6 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -40 ; 8 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 -36 ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 -32 ; 6 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !120 ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 -24 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !120 ; 2 uses
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %bb.ac, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.c:                                             ; preds = %.noexc
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !8  ; 2 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.aq to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 24
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp slt i32 %i.av, %i.ba
  br i1 %i.bb, label %bb.d, label %.preheader118

.preheader118:                                    ; preds = %bb.c
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !8
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader117, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.be = sext i32 %i.av to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !122
  %.not.i87 = icmp eq ptr %i.ak, %i.bi
  br i1 %.not.i87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !116
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !8
  store ptr %i.bj, ptr %i.ak, align 8, !tbaa !124
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !130
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bm, i8 0, i64 28, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !131
  br label %.noexc.backedge

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN3re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.bh)
          to label %.noexc.backedge unwind label %bb.g

.noexc.backedge:                                  ; preds = %bb.f, %bb.e, %bb.av, %_ZNSt6vectorIN3re25FrameESaIS1_EE8pop_backEv.exit
  br label %.noexc

bb.g:                                             ; preds = %bb.f, %bb.af, %bb.ae, %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.preheader117:                                    ; preds = %.preheader118, %.loopexit
  %.063169 = phi i32 [ %.2, %.loopexit ], [ 0, %.preheader118 ] ; 2 uses
  %.065168 = phi i32 [ %.267, %.loopexit ], [ 0, %.preheader118 ] ; 2 uses
  %.sroa.0104.0167 = phi ptr [ %i.fv, %.loopexit ], [ %i.aq, %.preheader118 ] ; 7 uses
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !116 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0104.0167, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !132 ; 3 uses
  %i.bs = sext i32 %.063169 to i64                ; 6 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bs ; 5 uses
  %i.bu = icmp ult ptr %i.bt, %i.br
  br i1 %i.bu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader117
  %i.bv = sext i32 %.065168 to i64                ; 5 uses
  %i.bw = ptrtoaddr ptr %i.br to i64
  %i.bx = ptrtoaddr ptr %i.bp to i64
  %i.by = shl nsw i64 %i.bs, 3
  %i.bz = xor i64 %i.bx, -1
  %i.ca = add i64 %i.bz, %i.bw
  %i.cb = sub i64 %i.ca, %i.by                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check265 = icmp ult i64 %i.cb, 24
  br i1 %min.iters.check265, label %.lr.ph.preheader278, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.preheader
  %i.ce = sub nsw i64 %i.bv, %i.bs
  %i.cf = shl nsw i64 %i.ce, 3
  %i.cg = add nsw i64 %i.cf, -1
  %diff.check263 = icmp ult i64 %i.cg, 31
  br i1 %diff.check263, label %.lr.ph.preheader278, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck262
  %n.vec267 = and i64 %i.cd, 4611686018427387900  ; 5 uses
  %i.ch = add nsw i64 %n.vec267, %i.bv            ; 2 uses
  %i.ci = add nsw i64 %n.vec267, %i.bs            ; 2 uses
  %i.cj = shl i64 %n.vec267, 3
  %i.ck = getelementptr i8, ptr %i.bt, i64 %i.cj
  %invariant.gep = getelementptr [8 x i8], ptr %i.bp, i64 %i.bv
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next272, %vector.body268 ] ; 3 uses
  %i.cl = shl i64 %index269, 3
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load270 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !64
  %wide.load271 = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index269 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load270, ptr %gep, align 8, !tbaa !64
  store <2 x ptr> %wide.load271, ptr %i.cn, align 8, !tbaa !64
  %index.next272 = add nuw i64 %index269, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.co, label %middle.block273, label %vector.body268, !llvm.loop !134

middle.block273:                                  ; preds = %vector.body268
  %cmp.n274 = icmp eq i64 %i.cd, %n.vec267
  br i1 %cmp.n274, label %._crit_edge.loopexit, label %.lr.ph.preheader278

.lr.ph.preheader278:                              ; preds = %vector.memcheck262, %.lr.ph.preheader, %middle.block273
  %indvars.iv187.ph = phi i64 [ %i.bv, %vector.memcheck262 ], [ %i.bv, %.lr.ph.preheader ], [ %i.ch, %middle.block273 ]
  %indvars.iv.ph = phi i64 [ %i.bs, %vector.memcheck262 ], [ %i.bs, %.lr.ph.preheader ], [ %i.ci, %middle.block273 ]
  %.ph = phi ptr [ %i.bt, %vector.memcheck262 ], [ %i.bt, %.lr.ph.preheader ], [ %i.ck, %middle.block273 ]
  br label %.lr.ph

._crit_edge170:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469227 = phi i32 [ %i.hj, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre200 = load ptr, ptr %i.ao, align 8, !tbaa !135 ; 2 uses
  %.pre201 = load ptr, ptr %i.ar, align 8, !tbaa !136
  %i.cp = icmp eq ptr %.pre201, %.pre200
  br i1 %i.cp, label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader118, %._crit_edge170
  %.065.lcssa223 = phi i32 [ %.469227, %._crit_edge170 ], [ 0, %.preheader118 ]
  %i.cq = phi ptr [ %.pre200, %._crit_edge170 ], [ %i.aq, %.preheader118 ]
  store ptr %i.cq, ptr %i.ar, align 8, !tbaa !136
  br label %_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN3re26SpliceESaIS1_EE5clearEv.exit:  ; preds = %._crit_edge170, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa224 = phi i32 [ %.469227, %._crit_edge170 ], [ %.065.lcssa223, %_ZSt8_DestroyIPN3re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa224, ptr %i.am, align 8, !tbaa !8
  br label %bb.ac

.lr.ph:                                           ; preds = %.lr.ph.preheader278, %.lr.ph
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %.lr.ph ], [ %indvars.iv187.ph, %.lr.ph.preheader278 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader278 ]
  %i.cr = phi ptr [ %i.cu, %.lr.ph ], [ %.ph, %.lr.ph.preheader278 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !64
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv187
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv.next ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.br
  br i1 %i.cv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !137

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block273
  %indvars.iv.next.lcssa = phi i64 [ %i.ci, %middle.block273 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next188.lcssa = phi i64 [ %i.ch, %middle.block273 ], [ %indvars.iv.next188, %.lr.ph ]
  %i.cw = trunc nsw i64 %indvars.iv.next188.lcssa to i32
  %i.cx = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader117
  %.166.lcssa = phi i32 [ %.065168, %.preheader117 ], [ %i.cw, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063169, %.preheader117 ], [ %i.cx, %._crit_edge.loopexit ] ; 3 uses
  %i.cy = load i32, ptr %i.an, align 4, !tbaa !8
  switch i32 %i.cy, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.cz = load ptr, ptr %.sroa.0104.0167, align 8, !tbaa !138
  store ptr %i.cz, ptr %i.c, align 16, !tbaa !64
  %i.da = load ptr, ptr %i.bq, align 8, !tbaa !132
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0104.0167, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !139
  %i.dd = invoke noundef ptr @_ZN3re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.da, i32 noundef %i.dc, i32 noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.dd, ptr %i.f, align 8, !tbaa !64
  %i.de = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = load ptr, ptr %i.al, align 8, !tbaa !116
  %i.dg = add nsw i32 %.166.lcssa, 1
  %i.dh = sext i32 %.166.lcssa to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %i.de, ptr %i.di, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0104.0167, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !140
  %i.dl = add nsw i32 %i.dk, %.164.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.ab

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.ay

bb.l:                                             ; preds = %._crit_edge
  %i.dn = load ptr, ptr %.sroa.0104.0167, align 8, !tbaa !138
  %i.do = add nsw i32 %.166.lcssa, 1
  %i.dp = sext i32 %.166.lcssa to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.dp
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0104.0167, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !140
  %i.dt = add nsw i32 %i.ds, %.164.lcssa
  br label %bb.ab

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i8 0, ptr %5, align 8, !tbaa !69
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !81
  store ptr null, ptr %i.i, align 8, !tbaa !141
  store i8 0, ptr %i.j, align 8, !tbaa !148
  store i8 0, ptr %i.k, align 1, !tbaa !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.g, align 8, !tbaa !81
  %i.du = load i64, ptr %i.o, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.g, i64 %i.du
  store ptr %i.n, ptr %i.dv, align 8, !tbaa !81
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.g, i64 %i.dy
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dz, ptr noundef null)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.h, align 8, !tbaa !81
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.g, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #31
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !81
  store i32 16, ptr %i.s, align 8, !tbaa !150
  store ptr %i.u, ptr %i.t, align 8, !tbaa !110
  store i64 0, ptr %i.v, align 8, !tbaa !111
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.g, i64 %i.ec
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ed, ptr noundef nonnull %i.p)
          to label %.noexc91 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.p) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.ee, %bb.o ], [ %i.ef, %bb.p ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.h) #31
  br label %.body

.noexc91:                                         ; preds = %bb.n
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc91
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6.i unwind label %bb.s ; 0 uses

end_hunk_0
